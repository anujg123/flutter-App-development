import 'package:flutter/material.dart';

class StatefullFlag extends StatefulWidget {
  const StatefullFlag({super.key});

  @override
  State<StatefullFlag> createState() => _StatefullFlagState();
}

class _StatefullFlagState extends State<StatefullFlag> {
  int _couter = 0;
  Widget returnStick() {
    if (_couter >= 1) {
      return Container(
        alignment: Alignment.topLeft,
        height: 550,
        width: 20,
        color: Colors.black,
      );
    } else {
      return const SizedBox(height: 0);
    }
  }

  Widget returnOrange() {
    if (_couter >= 2) {
      return Container(
        width: 250,
        height: 70,
        color: Colors.orange,
      );
    } else {
      return const SizedBox(width: 0);
    }
  }

  Widget returnWhite() {
    if (_couter >= 3) {
      return Container(
        width: 250,
        height: 70,
        color: Colors.white,
        child: (_couter >= 1) ? returnImage() : Container(),
      );
    } else {
      return const SizedBox(width: 0);
    }
  }

  Widget returnImage() {
    if (_couter >= 4) {
      return Image.network(
          "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAngMBEQACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAGBwQFAAMIAgH/xABIEAABAwIDBAcEBggDBwUAAAABAgMEBREABiEHEjFBEyJRYXGBoRQyQpEVUmJyscEWIyQzQ4Ki0Qiy4SU0U3ODkvAXJkRjwv/EABsBAAEFAQEAAAAAAAAAAAAAAAMAAQIEBQYH/8QAOBEAAQMCBAIIBgEEAQUAAAAAAQACAwQRBRIhMUFREyIyYXGBkdEUobHB4fBCM1Ji8XIGFUNEVP/aAAwDAQACEQMRAD8AeOEkswklmEksJA44SSrK7XabQYapdVmNx2hw3j1lHsSOJPhgsFPLO7JGLlMSBuk7mrbJPm78fLbJhMnT2h4BTp8BqE+uOjpcDYzrTm55DZAdNySzqE6ZUZBk1CU9JePFx1wqPrwHdjcjjZGMrG2CCSSo/jftwRNZGcPZlmSXDjyy3FjsSCgIU899cgJuAD2jGW/FqZry0XJHdyRRE611Ezjkeq5RbjOz1MvNv3u5H3iltQtoSQOOC0WIxVZIbpbmmfGWqZQdmldrtEFWjuRY7KirdRKK0FSR8Q6p0/tgU+LU8EvRG58LH7pxESLqDX8i16g0xFSqDDQiK3f1jboVYq4XHHBqfEaed/RsJv4flRMbgLoYtpi9uhq2oeY6xQHg5Sag/H1uUJN0K8UnQ4rT0sNQLSNv+81NrnBNnKe2SNKLcXMrHsrpNvamRds96k8U+o8Mc/V4G9nWgNxyO6O2YHdNWLJYlMIfjPIeZcF0ONqCkqHaCMYLgWmzhYo263YZJZhJLMJJZhJLMJJZhJLDhJIG2g7Q4eVmzFioTLqqhdLAPVaB4KWfy4nuxp4fhj6o5naN5+yG+QNXP1crVQrs9c2qylvvqvYqPVQOxI4AY66CCOnYGRiwVZzi46qEyjpXUoTrdQToL8TbhgzjYEqICfkPIGXcqMwZ8mP7dZ1CJDsxAUEBfVSoI4CyynyvjkJMSqaouY05eVu7XfwurQY1uqvazs7y3W6mmoTYag8AAsNLKEuAcN4DFWDEqmGPo2nT6KRY1xuVKzy4KblGXIZSEpidE6kJHuhDiDp5DEKJvSVDWnjf5hO7Rqvd1qXHSVJSttwBVlC4PPFXVp5FSVLnqUKdlGpupUEFTBZRbTVfVFvnixRx9JUNHeou0ap1So0OsUZVMqTIdjONpSpPAi3Ag8iMDjmfFL0jDYhOQCLFUNPyVlbKtJnrXFQ5FUgrkrl2c6idba8sWpa+rqZG2dqNraKIY1oQLnPZxTY+U3cwRA7BkttdO5ER12+sfdseFgbX7uGNSixSR1QIH2cDpfj4oboxlulCbA8RjpVXsiXJ2darlOQDDX08NRu5DcV1Fd4+qe8ed8UazD4atvW0PNTa8tK6Iynmim5ppqZlNc1Fg6yo9dpXYofnwOONqqWWlfkkH5Vprg7ZXmK6kswklmEkswklmEkl/tPz8nLEY0+nKSurPpukHUMIPxHv7B541cMw41Ts79GD59yHI/KFz1JedkvOPyHFuurUVLcWq6lE8ycdi1gYA1osFVJKauRdnrDNIjZnrTKag0Uh9EFA3h0RHvEfEocd3xHHHP12JudKaeI5eF+/7eKOyOwzFNJig5cqMpitN06A++pKXGpSWwd4W6qh28rHGCaioY0xFxA4hFyg6qfWae3VqTMp7w/VyWVNHzFsChkMUjZG8DdORcWVFs3rrlaoAbmq/wBo09wxJYPErRpveY9b4t4hTiGa7ey7UeaZhuFK2hIDmR66DraC6r5C/wCWIUBtVR+ISf2SvOzyealkqjSFKuoRUtrPaUDdP4YWIR9HVPb3/XVJhu0Kg2zTVIpVIprRG9OqTSSO1KTf8SnFzB2AyPkP8WlRk2ATC5YyERBOdJwqVfo+UmVX9qcEqdbWzDZvun7xTbw8caNHH0cL6l3DQeJ9lB5ucqMnWW5DK2n20uNrBStChcKB4gjGc0kahTQtMyzlKi0uUFUaL0UopbU0lu6nlE9VCb878LcOPLF1tVVTPHXNx8lAtaBsk7tFyA/lZDU9lxK4L69zcUu6mVm53NfeFhx46a46XDsTFWSwjrD5hAfHl1Q3lyvT8u1RqfTXd1xBspJ91xPNKhzH4Yu1NNHUR9G9Qa4tN10vk/M8LNVIRPhK3VDqvsk6tLtqD+R544mrpX0smR/krbXBwur3FZSWYSSzCSQ5nrNEfKtCdnuALfPUjskj9Y4eHkOJ7hi1RUjqqYMG3E9yi52UXXMNQmyKjNfmzXVOyHllbjiuJJx3ccbY2hjBYBUySTdMOh7HapVKPFmvzmYbz/WLDjZUUoPA3HPnbvGMWbHIo5XMDb24oohJCdmXaS3Q6FDpbK1LRGaDYWrio8z5m+OZnmM0jpDxVgCwsg2RUP8A0/zEiPJBGWqo4SyvlCfJuodyDqe7XsxoiI18OZv9Vu/+Q9xsoXyHuTCbUlSApJBBFwQdDjJREpJk/wDQvbAtThUim1xtBc06oWTbe8lDXuVjfZF8bhunaZ+/T6IN8r0xc2NB/KtYaI9+C8m38hxj0rstQw94+qK7ZBOwSoe05SfhqIKokogDsSoBQ9d7Gnj0WWpD+Y+iHEdFU7Uppl7S8r0xJull5lah3rdH5J9cWMLjy0M0nMEfJM89cBNqoTmKdBkTJa9xhhsuOK7ABfHPxsdI4MaNSjHRLTZF02Ya5Xs3TAd9932dgK+BGh3R4DcGNvFstPFHSs4alCj1JcmVUqhGpcF+bOdSzHYQVuLUdAP792MWON0jwxg1KITZCGUFSs11P9Kai2WoTZUikRlDVCdQp1X2lcB2C/nfqw2mZ8Mw9b+R+3got6xupm0jKDmb6I1DjyEMSGHelbU4CUE2IINtefHA8OrBSSlzhcEWSe3MEls5bO6rlSnx5sl5mUyo7ry2AbMqv1RrxB7bDXHTUWKR1TywCx4d6rviLRdVuSM0SMp1pM5neXHV1JLAP7xH9xxH+uD11G2qhyHcbFMx5aV1DAmR58NmXEdS6w8gLbWg6KBxwzmOY4scLEK4NVIxFJfFGwuTbCSXNG1LNCsyZmdDKyYMIqZjjkr6y/Mj5AY7XCqT4aAE9o6lVJXXK0bL2KbIztTmqshTjaiehTa6elGqd7u4+dsTxR0jaVxj8/BKK2bVPmqtVSiKVPojZlxfefphNj3qZPI/ZOh0tY3vyUTophklNjwd7+6sm41CnZdzJTcxxS9TX95STuusrG640rmFJPA4FUU0tO7LIPYp2uBXrNFDi5hokmmTR1Hk2Su2rauSh3g4VPUPp5RIzcJEXFktdnObpOX6s5kzM69xbC+ijPrOiexBJ+Ei26fLG3iNE2eP4yn46kfvzQmPscpU7bzSPasuxao2m7kJ4JWeYQvT/Nu4DgM+WYx/3fUfhPMNLq2yDmH9KMguh9e9MYYXHkX4k7pso+It53xXr6b4WrFtibhOx12IE/w/z+irlQp5V/vEYOJHK6Db8FY1sfivE144H6ocJ1IUWRK+mNuTTiTvIbqKG0/9MW/FJwRrOhwoju+qa95ER7d8ymPEj5eir60gdNKsdQgHqp8yCfLFLAaW7zO7hoPv+96nM7+KNcjU5rLOSIDUkpY6Njp5KlmwSpXWVfwvbyxl1spqKpxbrrYIjRlal3Mqcvavmxqlwy4zlyGsOvHUFxIPvHsKuCRy442WxNwqnMj9ZDt3fvFCuZDbgnPHjsxWG2Y7aW2mkhCEJFgkAWAGObcS4lx3R1R5izbCoz7cJsLm1R42YgR9XFnlf6o7zizT0kkwz9lg3J2US4BeUUl2fAfezUpt7pWlBcVGrMdJGoH1lW+I+VsMZgxwFPpbjxPt4eqVua5gmiOmY+IS1rih1XQKWLKKL9UkdtrY71mbKM+/HxVM76JubCc0G72W5a9LF6ISeH10fn88c5jtHtUN8Cjwu4Jz45xHQbtWrxoOTpS2llMmX+zMkaEFQNyO8JBONDC6cT1LQdhqfJQkdZq5tjMLkyGWGQnpHVhtO8bC5IAueXHHbOdlaXHgqgFyuicqbMqHl6exU23JMmY2gbpdcBQlVrFSQAOOvEnjjjKrFp6hhjNgPmrTYwNUdWvjL0REv875GkSJJzBlN5UCuti6ujVupkDsPK/joefdrUVe1regqBmjPy/f9IbmcRuoGT9qjMmT9FZsaFPqCFdH0xSUtqVwsoH3D6YNV4OWjpKc5m/NM2Tg5edtGUk1amJr0BvelREfrwgC7rPb3lPHwvhYNWmKToHnR23cfylKy4uFVZDzYnNeX5WT667vTHo6m4j6z+9G7oCfrC178wO3B6+iNJMKqEdUHUcvwosfmGUoY2TVF+i50NLlbzSZ29EfQr4XBfd873H82L+LRNmpelbrbUeChGbOsvmzFpymbVIsMkjo3ZLCx91C/wA0jEsTcJcPL+eU/MJ2aPstWzFImbQkTnnLIjdPMdWeFgDr/VhYmclFkHGw+iZnautdDTIz1tHbkSAVIfk+0PhXwMo1se6wCfPEp8tDQ5W7gW8ykOs+6utp+eXcxzhQKCVqgJcS2oo4ynL2AH2b8O069mKuF4c2nb083a38B7qUjy45QmdkqgwsjZWHtzzTTpHTTZC1AJ3rcL9g4DGHWVD62o6ovwARWtDAhCubR6lmOpCg5CYWXHCQqatNjbmpP1U/aPkMaEGFx07OmrD5e6gZC42ajLJOSomWW1SHFqmVZ8ftE107ylE8UpJ1CdB3nnjNrK99UbDRg2HuptZlRU4lKm1IWAQoWI7RikDZTSYzxsogUyi1Cq0eRJUtn9aIzhSUBF7qAIF9Bw8OeOkocZkklbFKBY8UB8QAJCVdIqL1JqsSoxieljOpdT32PDwI0xvzRCWMxu2IQGmxXWdKms1KnRp8dV2ZLSXUHuUL48+kjMbyw7hXQbi6SW3yre0V6HSkK6kRnpFjlvrP9h646fAYcsTpDxNvRAnOtkMbMJtNp+c4Eirb/RhRQ0Ui6Q4oboKu7U+dsX8UjlkpXNj8/AaocRAdqn7UMsixfoM9+jyjrdgBTKj9ppV08TxFj345FlVpaZocO/f139VaLeSHJ+cMz5TP/uahpnQxxn029rdqknh5kDF2Oipqr+hJZ39rvdRLnN3CuaLtEyxWQlLNTZjuqsA1KPRKJPIX0PkcVp8Nqoe0245jVSD2lV+0TIEPNsUzIJbZqqE/q3vheH1V/keWC4fiT6R2V2rOXLwUXsDtkrMt5zr+RZy6TU2FvRWVFLsF/i33oPIehxvVOH09czpIzqeI+6CHlmhUfNFFap62c0ZSkdJSHXQtC0e/BevfcWOVja1/DsvOlnL701SOuB6jmk5tusFuza8ioJpmeaYgJcddQmc0k/uZTdiD3BQFx/riNI0x5qJ/DbvafZO7WzgrmP0SNs1OqUe3s9Rb9tbt2OMKv63xWcScMfGd26eh9k/87oaywsUvJmY6poHJaW6Yyb69frOf0pGL1UOlqoo+Au4+WgUW6NJUpL36I5ILbaiis19F1G/WjxBw8Cu58vDAy34uquexH83fhP2G95U/K8KHkWIxmbMTZXUnUn6MpugWAdOlXf3R2f34BqpJK5xp4D1R2nfYJNAYMxUDp80bUa6iMpZLCFb24kWYip7T2nx1ODBtLhcJI3+ZTXdIU7sqZYpOTaUWo+4lRAVIlOkAuEcyTwHdyxy9VVy1kl3eQVhrQ0WVfWdqGVqVdKZ3tz3ANwh0lz973fXBocKq5dS3KO/T8pjI0KNBrecczjfptMaoUBR0kz0lbxHalvQfPTxxKSCjptHuzu5DbzKYFzldqpUClQnqhXJb09TLZU9JmneCUjjuoHVTxPAYq9LJK8MiGW+wHvv81KwG65emiOJj4hlZjdIehKxZW5fS/fbHeR5sgzb8VSdvon/sPqxn5PMNaruwHlNWP1D1k+WpHljkcbgyVOcbO+vFWojdqTu0Sb9IZ3rL4NwJJbB+7ZNvTHSYdH0dLG3u+qBIbuKMdlWzyLWosbMFQkudG1IO5GSnRZQRYlXZfl3YzMVxN8LjAwbjfxRIowdU9QRYY5ZWF8UlKgUqAIOhB54dJAGbtlVErvSP09Ipk1Wu+ygdGo/aRw8xbGrSYxPB1X9Zvfv5H3Q3RgpZzoeetnjqltyZSISVWS60vpY6h3pN93s1AxuMkoMQGoGblsfVCIexbXs6UjNjSI2d4AafSLM1SCmy2/vJ5j5+GIigmpDmpXXHFp90s4do5aGYlWyYHJ8AsVzLctO4+ps3ZfQfhWnUtq7CeHphy+Gtsx12SDbmPDmErFvgvcVinwi6Iry3cp1wdAtbmq4L3FG+OSkHn8Sb4TnyPtmFpY9f+Q4+v1SAHkVLo7UhqoZcMlvdlUmRJpr58EKW2R3EKXr3YFM5hZKBs8NcPWxTjcKvgQ2FUehwKhdFPitOViokc0qVutoHeoJSAPt4M97ulkkZ2j1G+W58vsmHALY5MbjTFZrzNHQ9UpVnKXSjqkJGiFrHJCRbdT8XHCDC5vw0Bs0dp31A7zxKW3WK+LoT8941/aFVF09l/rJQob0h8cg22PcT4jTs54QqGxjoKJmYj0HieJSy31ctru0r6Himn5LpjFLhD+M6OkecP1lcr+N8RGE9M7pKp5c7lsP30S6S2jQttLyfnXPTgk1mXJZhr1D01ZIP3GtPwAw0tbQ0XViaCe73/wBpBj3bpqZU2d0DLe46zFEqYn/5UkBSgfsjgnyxgVWJ1FTcONhyCM1gai8WtjPU1BrlNYrFJlU2TfoZLZbVunUA8xgsUroZBIzcJiLiy5uz9k5eTp8aMqWJaJDZWlwNblrG1iLnux2mH1wrGF1rWVV7MpRVsDqCY1YqsVarJdjoct3pVb/94oY9EXRscOBspwm1wlpUXzJqMqQbXdeW4fNRONuNuRgbyCCd0+NlkWlVHJUKOxMd9raSTITFlrbU2pSidQk/ljk8UfLHVuc5uh2uFajALVdTMpVWyzTM4VeOT7qXujeSO73QfXFZlZF/OFp9QnLTwKHpdH2pQd4wa/CqCBw30BCz5FNvXFttRhT+1GW/vio2eOKoJ2adqdIF5tOKkjitMMOD5oOLjKTCpew752+qiXSBVatsmZ0BTUiLS18lIdjrHzG+MWP+xUx1aT5H8KPSu4qukZlylWQTWcrqhPHUyKQ8EG/buK6vzvgraSsh/pS3HJybM07he6Y3AhyPacn5vTEcWLLi1Vss74PwqIBQr/zXCl6R4y1MN+9pv+U4t/ErfLBpceRUXqWmGHkdHJaikP0+aPq9UktKudDqARywNpErgwOvbUE6PHruO5I80Gy6rNkubypDosEpACyNEjdTci1yEm1zrbGm2BjRa37/ALQsyk0utuxnEIkhEiPvoUUPklF0gpQVW1UlF77vDEJqcOF26Hu79wOFzzTtcjFtmdGdXUITTTc18la63X1oaUDwuy0fcFuBIUbWtbTGYXRuHRvPVGzWXPqePruiDmql+JlpL6pWY8yzatMWbuCmt71z/wA1ywPkMWWvqsuWCIMb/l7BMQ3+RUqNnWgUNSFZbylHDqD1ZNQcLq79un5HA3YfUT6TzG3IaBP0jRsFPTtlzTIXuMQqWVk6JbjuqP8AnwI4FSNFy4+o9gn6Zyt4GZ9qtVsYlIbbSTbecidGB/3nFaSlwqLtPv53+gTh0h4Ihg0zafLIM+uUyCgjUNshxY8rAeuKj5sLb2GE/L99FMB5V9Dy1V0qSuoZuqbx4lDLbTST/ST64qPqYtmRAevupZTxKW+3VmI0qlJall6W2XA424/0i0ggEXF9BjZwJzznuLDS3BBltogTJlW+h6s5IGm9HU381JP5Y1q2HpYw3v8AdDYbKjUkpUpJ4gkHyvi2DcXUSnNsQytPiPKzDJWlEWTG3GG0quXLq1J7LW9cczjdZG+0DdSDr3KxEwjVOHljnkZVtRrtIpgKqjU4cYf/AGvJST5YLHBNIbMaSmJAQtUtrGU4Vw1MdlrHwxmiQfM2GL0eDVb9xbx/SomVoQTXtrdNqBKW8qR5I5LnKSSfIA/jjUgwWVg1lt4IRlHJD36aU+Q50bWRaGpw/Chokn5DFz4CRupncP3xTZweCnNMVKoMl5Oz6kxWOJfkoWwgDtupafTAS6KM2+IcT3WP2KexPBU1bhxlQH/ZG6OX2yFuppAkOhKAdSpZUUAYswPdnGbNY/3ZRr3C11F2yEzx7caXggr20lTiwhtJUtZCUgC5J5AYYkDU7JwjiNTo7qktx6fl+fNSAlTEqTJjyFK7ClxwAnTljKdM4C7nOaOYDSPkEdbJT66MbVDZvDbsPfWl5SD3hVyCPPEWtEvYqT8r+iW38VHZzvRE23siUVQHYT+YOJnD5/8A6Hfvmo5xyRpQNrmXGEht+hLpvLejIQtPoAfQ4zKjBKl2ofm8bhEErUa03aFlSpWDNajNqVwTIPRH+q2MyTDaqPUsPlqph7SiSO8y+gKYdbcSRcFCgR6YplpG4U1sVyxEpLmnablup0bMUqZP/Wx5z61sPhQO/wA90jiCBpjtsLq4poQxmhaNQqsjSDdCcVpbzhS3cndvpjRe4NFyhAKbmSP7JmKqRym3Ry3U27t429LYFTOzQsd3BO7Qp3bKUy6lkGGhqqPRAypxr9Q2gqFlHmoEc+zHK4qWR1jiWX2OvgrMd3NVxLyEiesqqGZMwSUn+GZYQj/tQkDAGYhkHUiaPL3JUsnMqCnZBlPe3nI8pxR1JVKVc4Kcaq7bj0TdG1SWtluTmiB9FldvrvrP54GcXrD/ADT9G1CmaJGzHLRWyzR41QnJ/gMqUoA/aUTYep7saFMzE6mxLy1vMqDixqEms91uY8mn5SpEGmFw9RunRAp0+ZHrbGgcOgYM9Q8utzOihnJ0aF5q1NRTyJO0Crypk49dFKZfLjv/AFFm6WxysNezCilMnVo2AN/uIsPIcUiLdoqQtUkswm5MBlhcxQFLy+wkpQu5sHpHNQ5jeNzbkL4gAzM4tdfL2nnfwanVUrLMeVKS3DmEJXKXEQ4UdV5TbZW64ByTvWAHYcWRWPa3rt4X8LmwHpqSoZLr1TKNHjID6GkznjCRPQw6Oq8wQUvIFtQtBBIIPI6aYjJUOdoTlF8t+R4eR4hOG2U6c5FVBYkVZl2s0CR+rj1IWE2Iofw1q5kdirgjgeWBsa/MWxnJIN2/xPePHuT3012WyNFzJSoZqWSK7IqlKSOs2yolTP2XGFXtpzAxFz6WV3R1UeV318CErOGrStcXPtMnOp/SrK1LnBR68mM0GnvTj4XGJPw2VgPw8rh3E3CXSDiEwKDlnZtmlkuUmK2pQHXZDq0OI8Uk38+GMeerxKlNpD7Igax2ynL2Q5RcvuxpKPuyVYGMaq+Y9An6Jq1NbIqNFc36dVKzCVx/Z5QTf+nEjjMzhZ7Gu8Ql0Y4K7g5ZqlO3QxmyqPNpFtyYht6/id0H1xUkqopN4gD3XCcNI4pabd3pQk0iHLkMvKS244FNtFsi5A1G8ew9mNzAQwh7mi2w3v8AZCmvoEO7KaV9LV+S2pAKERFKPjvp/wBcXMVm6OEHv+xUYxcr5tegKgZ9nkiyJQRIR3hSbH1CsPg8gfRtHK4TTCzlC2fy621mSns0R2Rcvp32UKO4UfGVDha19TgmIsgMDnSgbb8fJNGXX0XUfAeGOFVxBuZ9pFDoSzGacVUahfdEWH1yD9o8B6nuxpUuGTzjMeq3mVBzwED1BvaTnsFHsv0RTl/wlrLII+0ffV8vLGnG7DaHW+d3r+AhnO9TqVsZpcFoyMwVRbyWxvuIZPRNgDjdRubd+mBS47K85YWW+acQgboVzDnaFSumpWQYrVPhW3HZyU3ef8FHW3edT3Y0KbD3y2lrDmPAcAoOeBo1aIVJjZTp7dezM0H6rJHSQKa9qSf+M8DrYHW3P8JPndVPMEBswdp32CQGXV260pkyqfRJWa6o8pytVnfZgqV7yEWs473adRNuF8SyNklbSxjqM1PjwH3Ka5AzHcq1p8Yw80ZSohTuri05x15PY6604tQPeBujywCRwfBNNzcLeAICkO0AqSDLkMZNpFZh/wC80SpLZP8Ay3BvgHuJCh/NizIxpqXxP2e2/p+g+Sjfq35KdMktZZqSKjAjJk5Vr7W+uEv3Sn42+5aCTY8tMCaw1TDG82lj4/Q+BTk5TcbFRqrTZeVnI2Z8oz3l0iR+5koPWaJ/hOj014+OJxTMqgaeqb1xuOfeExBbq3ZE2XZWVdojvseY4LcGvKBCZMU9EJHeORV3G/dilUsq8PGeE5o+R1t+81Npa/fdeqrsbqkB5MvLNWC1tm6A8otOJ+6tOl/lhoscieMs7PTUehSMJGxUynZ7zblNQj51osiRFTp7Y0jrDxUOqr0OBPw+kqhmpHgHkf24+acPc3tBMnL+ZqRmKP01ImtP295F7LR4pOoxjT001ObSNsihwOy+ZvkT4uW6hIpCCuc2wosgC5v3Dme7CpWxvnY2Xs31Sde2i5ZqNSnVJ/pqlLfkugWCnllRA421x3sUUcTbMAA7lSJJ3Tb/AMPdPIRV6modVRRHQe211K/FOOdx+XVkY8UeELdt+oxcg0+stp1YWY7tvqq1SfmLeeI4BPle6I8dQnmbcXS42d11WXs1wplx0ThLLqVK3UlKhYXNjYBW6fLGziNP8RTubx39EGN2UroGbQJVYumsVV/2VXGHBJZQR2KX76vmB3Y5COobD/TbrzOp9NlaLb7qfRsvUiiN7lKp0eKO1COsfFR1OBy1E0xvI4lOGgbKXUJ0SnRHJc59tiO0LrccNgBgbI3SODWC5KRNt0j8yZjru0qpmj5ajPJpiFDev1Qv7bquQ7E/ieHUU1LT4czpZz1v3Qe6AXOebBElPybQtnVFdr9b3ahUGE3QVCyQs8EoSed7dY+OmKMldPiMogi6rT9O/wBlMMawXKXlBp1S2iZucfqDi1Nb3SzXz7jTQ+EHgNNAPE8jjankiw+mDWDXYDmf3dCaC91yt70hOedo0CLETu01LyGIzVrBEdvU/MAnzGINZ8DROc7tWufE6J+09WWW5ZrO2tyVoW1Pygj7iWloT6AYBUM6HCw3/j8yCnBvJdVGzts1SBmKgbu8qZTy8wCf4rRum3jf0xZxF3RPin/tNj4FRj1uFIyEprMNLnZOnLCVyAZVMcV/CfSLkeBH4HEK8GnkbVs4aO7wkzrDKtOSa67lOuv0mvsn6NkLLFQiPgKSg8N/dPG3qPLD11MKuESwnrDUEfT94pMOU2KLc57JFIvU8oL4df2Pf1HO7a/yPkcZ1HjP/jqR5+4U3RcWqy2d7SFuvooGbN6PPbPRNyHurvnkld+Cu/n48RYhhYA6en1byH27vopMfwKaikpWkpUkKBFiCNDjCBRUN1DI1BlyhMaiGFOSbplQVllYP8uh8xi4yvnY3ITdvI6qJaFrqM6o5To0mdUpjVRiRmyQt0Bp6/BINuqsk2HBPHnhRxx1coYxuUnzH4+aYktF1zHJfdkvuyJKy466orcWfiUdScd0xoa0NGwVM6ldN7MqMaJk2nx3E7r7qOneB4hS9beQsMcNiU/T1TnDbb0VxgytVvmakNV2gzaY8QBIaKEqIvuK+FXkbHAKeYwStkHBSIuLLlCfEfgzH4cpG4+wtTTiTyI0OO/je2Roe3YqkdCmRstzhmSbm2FT5E1+bEdSUutuAENpSnRQNtLWHjfGJilDSspjI0WIRo3uJsnXWaxCokBc2ovBplGnaVK5JSOJJ7MczDC+Z4YwXKOSALpfO5erm0OY3MzEXqTQUEKj05Kv1ro+s52H1HAW4nWFVBQNLYOtIdzwHgh5S/fZMKl0qBRYaItNjNx2EfChNrntJ5nvOMiWV8rs8huUQABJXO1QnbR85NUGhkqgxFKAc13L8Fuq7hwHnbjjpqGNmHUxnm7R9fD7oDyXmwRfmqLB2fbMpUKmCz0izHSnRbrixZSj/KFfK2M6ldJiFcHv2GvhZEcAxmiGtjNA6CnVPM8lNghhxmL5A76vwHzxdxmqzPbTN5glQibYZlTbDobkvOpkquRHiuLUo66qskfifli1jjwyly8yFGIXcouzthylbU4sC5u1Jejq7wAoflgmIuE1AX9wP0TM0evucKa7kPaG3MjoPsofEyNbmi/WT5G48LYVHK2voyw72sU7hlfdMraRklnNtNbrFHSj6SS0FIIGklsi4ST224HyxhYbiDqR/RSdn6Ij2ZhcKJsYzYudDXlypFaZ8EHoul0UpsGxSe9PDwtguM0Qjd07Oy7f970oncCirOORqPmxg+2tdFLAs3LaADie4/WHcfTFGjr5qU9Q3HI7fhScwOVDQqvWcmvNUjOKjIppIREq6blIJNkoc5p8T8zxxanhhqwZabR3Fv3HsmBLdHI9lvqbgvPso6RSGlLSkH3rC4xktF3AFEXMOYs7ZgzCw7Gqc1Sorjoc9nSgJSki9hwvYd9+GO6p8Ppqch0Y1581Tc9x3W3Zzl9WZM1xIqk/srKg/JJFxuJI08zYeeI4jUimpy7idB5pRtzFdQJSE6CwHYMcMri+qFxhJJLbccpFt1OZYLfUVZuaAOB0CV/kfLHSYHW/+u8+H3QJmX1S6yhmGTlaus1KMnfCUlDzXDpGyRdPoD4gY2q2lFVCY3acR4oTHZSuiaGzTK17NmJyS3OccTeMo26OPyKUJ5K7SdbjkLAcXMZIbwWy237/AB+ytCx1RLpbFRSQJtLrkwNMZZoALlXqgKeof3LJ0Usnl2X8TyxqYbAy5qJuw35nl3qDydgrXIuUImUqSmMxZyU4AqTItq4rsH2RfQYBXVr6uXM7QcAna3KEA7ZHJOYM00fKlPG84R0izySpZsCfBIJ8DjWwcNp4H1Mn7b3KHLqQ0JgVaHHoOQJ8SIndYiU11KO+yDr4njjIikdUVbXu3c4fVEIs2yBP8PcDdgVaoqH7x1DCT90bx/zDGt/1BJeRkfmhwjS6q6vFNM27xFAWTJlNOp/nTun1BweF/S4S4cgR6KJFpEcbX8tGv5XXIjNb86n3eZsNVJ+NI7bgXt2gYy8Iq+gnyuPVdofsiStzBe9jtYFXyRFbWbuwlGKvwSAU/wBJGGxeDoqsng7VPGbtVZtHyjJanN5uyygIqsJXSvNJH79IGpsOKraEcxg2HVrcppZ+w7Qdyi9hvmCNcr12NmOixqlGNkup66L6trHFJ8DjMqad1PKY3cEQG4urGSyy+ytmQ2hxpxJStCxcKHYRgIJaQW6FOgPNNZZ2dUhYgyErQ/vJhQXVbxZVb4Dx6ME3IPC9gbWGNWlgdiEvWFrbnn49/wCnmhudkC58kPOSZDr76i486tS1q5qUTcn5nHYtaGtDW7KruujtlWUzlnL4XKb3ahMs5I7UD4UeQ495OOLxSs+Jm6vZbt9yrUbcoRvjNRFmEktMyKzMjOx5LaXGXUFC0KFwoHiMO1zmODmnUJbrmfaFk2TlKrqQgLXT31ExXyLi31D9oeo1x22HVzauP/Ibj7qo9mUoYD7gQhIcWEtqKkAKNkntHYdMX8ouSRv++ahcrpzLlZ6HIdNnPve3viI2k9CoKU87YDcHaq+n444aogvVOjAyi58hz8FcB6t1tytl9cF6TVqqpD1anG8h0apaTyaR9lPDv44hU1DZAI49GDbv7yk0W1KIlKCElSzZIFyewYqqSWmzWAqt5irGdJaD+0vLZghXJoaFQ+QHkrGziUnQwso28NT4obBclyKdojnQ5GriieMNafmLfnijh4Jq47cwpP7JVfsigCDkOndWypAU+rv3jp6WwbFpc9Y7u0TRizUObUIZj5/yfVUi2/KbYUe2zgI/zHFzC35qSeLuJ+SjINQU1iAQQQCMYQRUs8oQ/wBENpFUoYChAqjXtcPTQEE3QPAX8gMbNXJ8VRMm/kzQ/ZCaMrrJlnXhjFRUIKp36KV5ypwEWpFQX/tBhI0Yd5PJHYTors48saAl+JiEb+23snmOXt6KFspuh7bzUJEeh09mLM6EPSD0raHN1a0hJtw1KeN+8jFzAo2PmcXNvYKMxICRr8qRJCPaH3XujTuoLiyrdHGwvjqmsa3sgKsTfdNLY5kRU19vMVWZ3YzRvDZWP3iv+Ie4cu068tcHGMQDQYIjqd+7u8UaJnEp4jhjmFYX3CSWYSSzCSVdXqJAr1Mep9TYDrDnzQeSknkR24LDM+B4ew6hMQCLFc254ybPyjPDcgdNBdNo8oDRfcexX48sdpQ17KtmmjuIVV7C1aMo5sqOVpyJEOzzIVdcZ0ncJIsSPqqtpvDW2J1lFFVMs7Q8wmY8tKP422ea/X2UJpkdNMccS3uEkvAEgb172vrwtjIdgLWwkl/XHoi9MSUy85OSFUJ2DBXuzKgoRGFfV3/eV/KjeV5Yw6MN6UPfs3U+Ww8zoiu2VpSqexSqfGgRE7rEdtLaB3AYDJI6R5e7cpwLCyoNqKS5kaqMo995KG0+JWkDFvDTarYeXsov7Kv6TCRT6VDhNiyI7CGkjuSkD8sVJX9I8vPE3UhoLIU2rQ+kpFMngdan1SO+Tb4d7dP4g+WL+GPtI9n9zSPkovGiN8ZqmhjO9PWuNErMRBVMpL4kIA4rb4Oo80XPiBi5RyAOMTtni3nwPqovGl1KzTmFugZalVlKA+ltsKbSDYLKrBOvIajA6WmM87Ydrp3OsLpVt7a5i6fLalUeKqUrRgoUejsb33wdT5ce7G8cBaHtyvNuPPyQem02SyqdSl1SWZU+Qp5wjdBWSQhI4JSOQHIY3YomQtysFggElx1R/sx2buVxbNXrjZbpgIU0yrQye/uT+OMjE8VEN4ou1xPL8oscV9Sn400hltLbSEoQhISlKRYADgAMcmSSblWV7wklmEkswklmEkswklGqMCNUobkOcyh+O6ndW2sXBGJMe6Nwew2ISIvokfnjZJNpynZuXAuZE1UYp1eb14J+uPXxx1FDjTJOpPoefD9+SrvitsllZ1h7ULbdbVzulSSPwONzRw5hA2Rtl7ajXKW8x9I7tUaZBDYfNlpvxIUOOg534nGXUYPBKDk6pPJFEpG6m1Ta/XnqwJNN3I8BBG7EWgK3gBrvK43OvDhgUWBwCLK/V3NOZjfRNOZW6JmSBBYiVSC4pyUw640iQkqQEqCyCL3+G2MCOCanc5zmG1iNuen3RiQQvGddoVMymuOy807LkPjfS2wpPVTe1yT/AOaYlRYbLV3I0A5pOkDVsk1en5tyJImRHNxuRHWpCHiErStF9CL9qcREMtLVBrhqPulcOaq3aDtAh0aiOLodSgP1JakoShDqXC2DxUUg8u/BqDDXzTAStIb6JnvsNEEUPbNUokB5qrxE1CTvXZdSQ0LdirD8BjUnwGN7wYnZRx4+iG2fTVCFdzrW63FEF6T0NPSN1ERgbqAkcAeZtpxPLGlT4dBA7O0XdzKGZCVTU6nzKnLRFp0V6S+o6IZQVHx7h3nFqSVkbczzYd6iGk7J05C2StU9Tc/MpbkyUneRETq22eRUfiPdw8ccxXYy6QZINBz4qwyK2pTWSAlIAFgOWMJGX3CSWYSSzCSWYSSzCSWYSSzCSXwi974YpIazXkmg5jaW7UIYEkJNpLJ3HOB5jj4G+LtLXz0xAYdOR1Cg5jTuuZqxFRBqkuI0VKbZdUhJWdSB247eB5kjDiqrm2KigcMGaLqCw2vwHnhuNk6y5sPC2GsCldYSSmxNwDoMKwSus4XtiYCSwi1sROiSKdnGX4eZMwCDUVPBhKN8hpQSVdxNuHhihidS+mhzM370SNoJ1XRtDoFKoEQRqRCajN/EUjrLPao8SfHHFz1Es7s0purQAGysgLYEnX3CSWYSSzCSWYSS/9k=");
    } else {
      return const SizedBox(width: 0);
    }
  }

  Widget returnGreen() {
    if (_couter >= 5) {
      return Container(
        width: 250,
        height: 70,
        color: Colors.green,
      );
    } else {
      return const SizedBox(width: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("India Flag")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // print("hiiiii $_couter");
            _couter++;
          });
        },
        child: const Text("add"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                returnStick(),
                Column(
                  children: [
                    returnOrange(),
                    returnWhite(),
                    returnGreen(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}