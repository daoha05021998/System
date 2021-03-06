# This file shouldn't need to exist, but lesskey is broken on OS X: <http://superuser.com/q/880155>

#env
export LESSCHARSET='utf-8'
export LESSEDIT='vim ?lt+%lt. -- %f'
export LESS=' -b50000 -Riq -mPm?f%f .?n?m(file %i of %m) ..?ltlines %lt-%lb?L/%L. : byte %bB?s/%s. .?e(END) ?x- Next\: %x.:?pB%pB\%..%t$ --follow-name'

# DISABLED -X BECAUSE IT PREVENTS SCROLLING (and thus, also, -EF)

# -bn or --buffers=n
#        Specifies the amount of buffer space less will use for each file,  in  units  of
#        kilobytes  (1024  bytes).   By default 64K of buffer space is used for each file
#        (unless the file is a pipe; see the -B option).  The -b option specifies instead
#        that  n  kilobytes  of  buffer  space should be used for each file.  If n is -1,
#        buffer space is unlimited; that is, the entire file can be read into memory.
#
# -F or --quit-if-one-screen
#        Causes  less  to  automatically  exit if the entire file can be displayed on the
#        first screen.
#
# -X or --no-init
#        Disables  sending the termcap initialization and deinitialization strings to the
#        terminal.  This is sometimes desirable if the deinitialization string does some-
#        thing unnecessary, like clearing the screen.
#
# -E or --QUIT-AT-EOF
#        Causes less to automatically exit the first time it reaches end-of-file.
#
# -i or --ignore-case
#        Causes searches to ignore case; that is, uppercase and lowercase are  considered
#        identical.  This option is ignored if any uppercase letters appear in the search
#        pattern; in other words, if a pattern  contains  uppercase  letters,  then  that
#        search does not ignore case.
#
# -q or --quiet or --silent
#        Causes moderately "quiet" operation: the terminal bell is not rung if an attempt
#        is made to scroll past the end of the file or before the beginning of the  file.
#        If  the terminal has a "visual bell", it is used instead.  The bell will be rung
#        on certain other errors, such as typing an invalid character.  The default is to
#        ring the terminal bell in all such cases.
#
# -m or --long-prompt
#        Causes less to prompt verbosely (like more), with the percent into the file.  By
#        default, less prompts with a colon.
#
# -Pprompt or --prompt=prompt // ?f%f .?ltLine %lt:?pt%pt\%:?btByte %bt:-...
#        Provides a way to tailor the three prompt styles to your own  preference.   This
#        option would normally be put in the LESS environment variable, rather than being
#        typed in with each less command.  Such an option must either be the last  option
#        in  the  LESS  variable,  or  be terminated by a dollar sign.  -Ps followed by a
#        string changes the default (short) prompt  to  that  string.   -Pm  changes  the
#        medium  (-m)  prompt.  -PM changes the long (-M) prompt.  -Ph changes the prompt
#        for the help screen.  -P= changes the message printed by  the  =  command.   -Pw
#        changes  the  message  printed  while  waiting for data (in the F command).  All
#        prompt strings consist of a sequence of letters and  special  escape  sequences.
#        See the section on PROMPTS for more details.
#
# -R or --RAW-CONTROL-CHARS
#        Like -r, but only ANSI "color"  escape  sequences  are  output  in  "raw"  form.
#        Unlike  -r,  the  screen appearance is maintained correctly in most cases.  ANSI
#        "color" escape sequences are sequences of the form:
#
#             ESC [ ... m
#
#        where the "..." is zero or more color specification characters For  the  purpose
#        of  keeping  track of screen appearance, ANSI color escape sequences are assumed
#        to not move the cursor.  You can make less think that characters other than  "m"
#        can  end ANSI color escape sequences by setting the environment variable LESSAN-
#        SIENDCHARS to the list of characters which can end a color escape sequence.  And
#        you  can make less think that characters other than the standard ones may appear
#        between the ESC and the m by setting the environment  variable  LESSANSIMIDCHARS
#        to the list of characters which can appear.
#
# --follow-name
#        Normally, if the input file is renamed while an F  command  is  executing,  less
#        will  continue  to  display  the  contents of the original file despite its name
#        change.  If --follow-name is specified, during an F command less  will  periodi-
#        cally  attempt  to reopen the file by name.  If the reopen succeeds and the file
#        is a different file from the original (which means that a new file has been cre-
#        ated  with  the same name as the original (now renamed) file), less will display
#        the contents of that new file.
