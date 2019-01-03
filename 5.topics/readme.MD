注意：*代表一个词
注意：#代表所有

exe_emit_log_topic脚本用来模拟消息的发送，第一个参数为通配符的规则，第二个参数为消息的内容

exe_receive_log_topic脚本用来接收消息，可以接收多个参数，至少需要一个参数

例子一：*
exe_emit_log_topic 1.34535.2 message

exe_receive_log_topic 1 2 1.*.2

1.*.2 <= 1.34535.2 匹配

例子二：#
exe_emit_log_topic 1.34535.2 message

exe_receive_log_topic 1 2 1.#

1.# <= 1.34535.2 匹配

注意：而1123不能匹配1.#
