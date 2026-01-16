return {
   -- Environment variables (proxy)
   set_environment_variables = {
      HTTP_PROXY = "http://127.0.0.1:7897",
      HTTPS_PROXY = "http://127.0.0.1:7897",
      ALL_PROXY = "socks5://127.0.0.1:7897",
   },

   -- behaviours
   automatically_reload_config = true,
   exit_behavior = 'CloseOnCleanExit', -- if the shell program exited with a successful status
   exit_behavior_messaging = 'Verbose',
    status_update_interval = 1000,
    check_for_updates = false,
    enable_csi_u_key_encoding = true,

    scrollback_lines = 50000,

   -- 【新增】规范化粘贴的换行符，防止粘贴时终端回显混乱
   canonicalize_pasted_newlines = "LineFeed",

   hyperlink_rules = {
      -- Matches: a URL in parens: (URL)
      {
         regex = '\\((\\w+://\\S+)\\)',
         format = '$1',
         highlight = 1,
      },
      -- Matches: a URL in brackets: [URL]
      {
         regex = '\\[(\\w+://\\S+)\\]',
         format = '$1',
         highlight = 1,
      },
      -- Matches: a URL in curly braces: {URL}
      {
         regex = '\\{(\\w+://\\S+)\\}',
         format = '$1',
         highlight = 1,
      },
      -- Matches: a URL in angle brackets: <URL>
      {
         regex = '<(\\w+://\\S+)>',
         format = '$1',
         highlight = 1,
      },
      -- Then handle URLs not wrapped in brackets
      {
         regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
         format = '$0',
      },
      -- implicit mailto link
      {
         regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
         format = 'mailto:$0',
      },
   },
}
