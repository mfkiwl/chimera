# Chimera scripts

## `mine_programs.py`

This Python script searches for the most popular programs in GitHub of a given
Hardware Description Language and then clones them in order to extract their
relevant files.

### Running

#### Dependencies

In order to run the script, you must first install its dependencies. You can use
the available `requirements.txt` in order to install them:

```
pip3 install -r requirements.txt
```

#### GitHub API Token

The script uses the GitHub API to mine programs. Thus, you need a personal
access token to able to send requests to the API. You can read more about how to
generate personal access tokens
[here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens).

After you have generated your own personal access token, you have to create a
file called `credentials.py` in the same directory as the script with the
following content:

```python
GITHUB_ACCESS_TOKEN='<your access token>'
```

Although you must create this file for the script to work, you can also use the
`--access_token` argument to specify a different personal access token.

#### Arguments

The script takes only one mandatory argument, which is a string which describes
which progamming language will be searched for when mining for programs. There
are currently three supported options: Verilog, SystemVerilog and VHDL.

However, there a few optional arguments that you can use to customize its
execution:

```
--clones_dir CLONES_DIR
  (str) directory to store repositories cloned from GitHub (default: "../database/cloned_repos")
--clones_savefile CLONES_SAVEFILE
  (str) name of the file where the names of used repos are saved (default: "cloned_repos.txt")
--target_dir TARGET_DIR
  (str) directory to store mined Verilog programs (default: "../database")
--access_token ACCESS_TOKEN
  (str) GitHub access token (by default, takes token from credentials.py)
--max_programs MAX_PROGRAMS
  (int) maximum number of Verilog programs to be added to the target directory (default: 50000)
-h, --help
  show help message and exit
```

## `filter_programs.tcl`

This Tcl script uses Jasper's `analyze` command to analyze all Verilog programs
in a given directory. The script will move all invalid programs to a separate
directory and keep the valid ones.

By default, it assumes `../database` for the directory with Verilog programs and
`../database/invalid_programs` for the directory of invalid programs. You can
change this by modifying the `database_dir` and `target_dir` variables within
the script.

### Running

This script can only run within Jasper's Tcl shell. You can run it with the
following command:

```
jg -no_gui filter_programs.tcl
```

## `count_productions.py`

It is a script for counting how many times times a grammar rule is used by analyzing the trace of the execution of the parser created by Bison.

In this project we use the [verible](https://chipsalliance.github.io/verible/) parser to analyze the program and generate the trace. The [verible-verilog-syntax](https://github.com/chipsalliance/verible/tree/master/verilog/tools/syntax) tool was used with the flag `--verilog_trace_parser`.

### Running

To run the script directly one must use python,  and redirect the output of the trace to the script's input, such as in the example below:

```bash
cat output_tracer.txt | python3 count_productions.py --output_file count.json
```

#### Arguments

the script takes one mandatory argument

```
--output_file OUTPUT_FILE
   (str) the name of the file to save the output. If the file already exists the script will load its information, considering it a previous saved state. If the file does not exist it will be created.
```

### Methodology

To develop this script we based ourselves on the trace generated by Bison. Below we show an example of this trace:

```
Starting parse
Entering state 0
Reading a token: Next token is token "`timescale" ()
Shifting token "`timescale" ()
Entering state 7
Reading a token: Next token is token TK_TimeLiteral ()
Shifting token TK_TimeLiteral ()
Entering state 152
Reducing stack by rule 640 (line 3383):
   $1 = token TK_TimeLiteral ()
-> $$ = nterm time_literal ()
Stack now 0 7
Entering state 154
Reading a token: Next token is token '/' ()
Shifting token '/' ()
Entering state 436
Reading a token: Next token is token TK_TimeLiteral ()
Shifting token TK_TimeLiteral ()
Entering state 152
Reducing stack by rule 640 (line 3383):
   $1 = token TK_TimeLiteral ()
-> $$ = nterm time_literal ()
Stack now 0 7 154 436
Entering state 828
Reducing stack by rule 638 (line 3377):
   $1 = token "`timescale" ()
   $2 = nterm time_literal ()
   $3 = token '/' ()
   $4 = nterm time_literal ()
-> $$ = nterm timescale_directive ()
Stack now 0

```

The trace above is just a small sample of what is generated by Bison but enough for us to present the idea. As you may see, the output consists of steps taken by the LALR(1) parser. We can count the productions by analysing the reductions made by the parser, above we had 3 reductions, let's analyse the last one as an example.

The $$ represents the left handle of the rule while the $i above show the terms and tokens generated by that rule in the order they appear, that generates the rule below :

``timescale_directive: '`timescale' time_literal '/' time_literal``


## `run_parser_count_productions.sh`

Consists of a script that runs the parser and uses the generated trace to feed the `count_productions.py` script.

### Running

To run the script one must use the following command:

```bash
./run_parser_count_productions.sh <directory> <_verible_parser_executable> <output_file>
```

#### Arguments

The positional arguments are explained below and follow their respective sequence:

```
<directory> : (str) Directory in which the files to parse are stored
<_verible_parser_executable>: (str) Filepath to the parser executable
<output_file>: (str) name of the file to save the output of count_productions.py. More information see above.
```

We highly recommend the use of the [verible](https://chipsalliance.github.io/verible/) project, since it was the only tested and based on when creating this script. The parser can be found on [verible-verilog-syntax](https://github.com/chipsalliance/verible/tree/master/).
