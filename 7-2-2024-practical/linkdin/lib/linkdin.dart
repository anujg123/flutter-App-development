import 'package:flutter/material.dart';

class Linkdin extends StatefulWidget {
  const Linkdin({super.key});

  @override
  State<Linkdin> createState() => _Linkdinstate();
}

class _Linkdinstate extends State<Linkdin> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text("Linkdin",),
     ),
     body: SingleChildScrollView(
     child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/myphoto.jpg"),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.search),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Search"),
            const Spacer(),
            const Icon(Icons.comment),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/images/pratikphoto.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pratik Raskar",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.add),
                  Text("Follow"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 300,
          width: double.infinity,
          child: Image.network("data:image/jpeg;base64,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",
          fit: BoxFit.cover,),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                Text("Like"),

              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                Text("comment"),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.read_more)),
                Text("Repost"),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.send)),
                Text("send"),
              ],
            ),
                   
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
                children: [
                  CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage(
                      "assets/images/rohanphoto.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Rohan Todkar",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.add,
                  ),
                  Text("Follow"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 300,
          width: double.infinity,
          child: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQBDgMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAIDBQYBB//EAEcQAAIBAwIDBAYIBQEGBAcAAAECAwAEERIhBTFBEyJRYRQycYGRoQYjQmKSscHRJDNS4fCCFVNjotLxQ1RykyU0RHODo8P/xAAaAQACAwEBAAAAAAAAAAAAAAAAAgEDBAUG/8QAKREAAgIBBAIBAwQDAAAAAAAAAAECEQMEEiExQVETBSIyUmGBwRQjM//aAAwDAQACEQMRAD8A8Orq8xXK6OYoAfjenCltknPM0hQBMvKnjbcc6YvKnjnQAf8ASZTJe212v/1MSuSNsnqfjmjreSa7sRI5Ikg7pkBA1L0oW7Aufo1aS/atpzE3kDuB8KN+jraJ2jJyrr8xWhSe+/Y2KG/gktbwK0rTaMFwx0sNsgZPxX51a6wyA51KRvvzqheJop5YmPNSM93JIOams7ySBlVmaSPzK7eyteDJXDEyqmibiESwBBG7L7WADeeTTuGTJGzNI7up20gq29Fz9lPa5LZjP2gAdPnVVMr2kZ1srFpCuSAfs89vaKbM3j+5FajZcLd2PbLMBIGIwdhinXN7YzRiPLx4ORyrJSX8kODs2+6nkadH6ZMC4jUDnu2P0rJ/kSfgbal5NMHsSCO2k35bCiZLyzfSwllVwukkY3FZMC78EH/5KcBdkjGn8dL8svQ1r2aXtLIYxNJjwwKlae0Zy/ayg8xhRWW/ihz0/jro9K5d38VR8j9DWv1GokuLORI11yKEGw29lNL2mB9bJ3QfsrWdIulG+OWfXpwW6O4C8s+tUPJJjbl7NIb2zt4lQFyep23qE8Ts2PKRj54rO3RvAqkKpZSRjXVfBeStMVdcEdM1bHUzSoonBSlaZqbx0vvq7dnDD7LYwffUttbdkC7u0kp5u3w/Sq/hGp7k7ckJq2PPbnyG1bMMlOPySFUeaBru9htR3mUyKM6c4xVRacRmu+JR5JAXXIeXqqpJHKifpHbR2olgLqbgqJJI1H8vcYGfHrVTwnaa5fO8dnMR+Ej9RWLJq3ll9vRf8LxupHbAaBK32o7WRh7dOP1qvxVnEjLYXsuMDsxGGPLdlyKrKztVFIafY1s1FIO6amNQzdRSiEFKlSoAVKlSoAVKlSoAkDBsAj3inqB0qFedSA0AEJTqjj5VIAScAZNAFtwj6/hvFrM5J7EXKAeKHf5EfCncLl7KeGTIwrAn8jTPo6WtuN2UkyOIZJOxkJQ40uCp/PPuqN7Wfh8rWtyuCpK6hyIG3OrKuKZOCVZGgnjqst0SrMuQOXPI7p/L51Jw+0uLyxe4hQSrAdMoEQZgcZzjqKfxkiWCG46SKG95HL5GjfoXeSWXDOLTwLrliMcgQnGedVZs08cd0TZHFDJm2y6ILSeSNgJHHY6dOns8DHjtXONRJHw6JoF7rXDZI6kopB+Aq+mHD+MWk13Y/wAFeQ4mlhePUGI6kdCBnDDIOTtk5qh4sWbgiu/rG+bP1ZXnHk/Orseq+XHTVCZNNsTaM48ZaWIkZjaQAHoa0FvEXViI0OrPN8YwM/pVACfSIAd8OBWgt4e0glCxw5wRqd+WRjw86MaOZnfKHC1OkjsIj3sfzB5nwp0Vi5x9RFzz/M/tRUdlJLDLJHw60cL2mrDZI7x39XpyH6dGx27BjmzsjmYgfWYz3mOPV5bgewfCyilSB/Q2LY7CI7czJ5ny8qSWrFyPR4ts5zKPEjw8qm7AmQt6HZYKjA18yS4z6vPcdOg9yS0kWVibWyIGcjtMctXXT94fh+BQykDyQ5TV2UXL+v3eFSrDoDaokwoIPf8AAeynXMJ7ND6NaIAoJIfOe6fu+YPtHwKFpMIFmPD7YROANQfAY977vsz7uXSKG30V89sVZFMUQPPZ/b+1UFyum+zgAlckA1qJwGCEWVovXIkGev3PL/OmYvBi9wAqgL0pZjQbczRfR1C89zjpbMfmKs0LK6sBvq269arfozIoj4hI+wW19vUU8cQD3USQKQpdVZmiY7ZHLw51swzSwtMuhzkKe6jYyXksjmSR0YszHcnIrv0ZtfTrq6gY4DWjA4541oKLv48PcLyyrDlVVwa8Wyvu0k/lOhR1zswyCA3XGQDt4VysdGrNw0WX0hbRZLb2qhLdSMLjmM8z5Z+NZotjcn31e3q3nFpdRBhgY6iz7EgdSP06fOmLw2GxBuL3vKDmKFhkt95vLyrQ4uRTKVsgs+FzT2xupnNvaqpOtl7zj7q+fjQYFsuezt8+cr6j8BgfHNaMvLecIknujqecHQmT7h+vOszyz5UTjsoimD3G74VQoHgKhxVpHYTTWstxhUiiUsWY41eQ8TQDjBO1VARUq6RXKAFSpUqAFUke9NABFSIMUASqcVIKiFTINRxt7zigCeC/u4D9VcyqfNsgD31orO5a+hLcUTtUcd+RBhkbxYD3bjx5VnEtppJltxHiWT1Vbu52zzPsoyC7u7OQLdRSp2Y9YLh0H5EeVWRlXDZEUr3JFrx20FnwOAI3aoGxHJnkpOR7djil9CsPBxaPqYAfmag4lxNJOEm3iMTLMcnC5XPPUB9hvEHx61L9A2Bvb9D9u1IHxrJqf+Tdm7BJPUItbWFHAIUFmhlj5cw0bbfHFVfFFzwUYGB6bnGgr/4fnzq44W2ZIF8ZAp9+1VF7pPBBg6v4nngj7A8asw+TVOKeGRmxn0iE/wDEFaGAfVPI0Fu4UNnXncaT5VnztdRDb+YM5rRWURKEdhA5bIGrI6E+HlWnGee1HaNx9B4oobW6MkVvGxkwwQ5BUZBJ2HUGso0S+kTKljZFO0KLqcjPeI37vXST76dbPcQxSpBFbI0hIcrIy5zk4O3+fkyO0c970Oyxr1Y1nGDk49Xzq+U7ikYoY9s5S9kQj0uQ1lYudOWBc+LnJ7vPb8vc2GI9qV9CsTnPNz/U/XT90j2Y90q20jsQlrZkgD1nP9Tc+7z5/wCcurDqZlWysxgsSNZ23I8PI/E+5C6waeJkiQNb2h1DIIJPRiPs+R+Pw3fEY4ZPocEiSLBiURr9kEn5delYeZdUGEtbUELjOTv8ufh7/cS0862vYPHb9hHnEetsBgDnAx15f5tZCW2yrJBypkc9pIGQm0s1HgrHfY/d2/tWYux/HBSAO79mtHNbtGVR7e0UnwJ39by/zas9cAJfYfmF20NgD41RM1YeZF1wID0DiwIO9p1XP2hQkTKkoYFcAg7QvRnBDmy4rqIx6IfEjGoeFCSaJSTJIihtmwjjG2OnsHLxq/Ev9Zqg3ubLLids6XFwGRl58xvvVDwYpE91dSwdsYY17KP/AIjOoHy1VqeJ8fvuKqYrQizj7PXJJHGZDy+0x2Qe3lWNFwLWWRYJe2BdSXUEA6STtnfma5uOOSP5o05pwk1sNDDJIqy3F+0ZkhQsY16E+qPb191VMzz31wok700raR1xnb/PZXYmZeHKrsWkuJe1kY8yBsuffk++iuHARvNdsMC2QlSf6jy/WtN3wLFeSPjF6g12kJxHEBEDnkOv7e6m8N4M0wWa8UrHjKx8i/t8BRfAOHLMjcQuYww1ARBuR2znz/tRfGriSFUSJtJfJJHgKpnO5cGuGmrF82TrwDcZdU4XcrGV0roQADYZbl5bA1k33Y5671d37qvAgo2aS8389Kn/AKhVGT1oRinPe7I2ptdY71ypEFSpUqAHKakU1EvOpV50ASCpRyxUQqQUAWHCLh4761iY6oHnRWVhkLlhkjqDW34ddzRQKkxS4jIwysMN+x9+K84YlVLAkEDII6Hp86tbi4vLXjt61lMUUyltB3Vs78qJQjOFSVj4cksc7ianiv0e4ffRS3vCtC3UILmHGFYjcqynGnr4VSfQdx/t50Oka4XGByzVlwziokIuriHs5IyiSup2dGOCMewms20lzwLis3oj9nNBI6g6Qwxnz6Vm+GWyWO79WbJ5oLLHJVe6NfBbz2dzH26EL2owwGQd/Gq/jMTW/DuzkB2ujjOei4q9tfpHZejpNxEphApk7JSrxknrG3Mew1meOM8tjJPFMHge/fQOu6538NjyqdK501NF+ecFB7H2Z0t/Ex53PaCr63QvDIogQnBBZgdtiP7+6s93vSYiWA743q7jV9DPqhIAJ3Qb7HyrbBnBzctMP7NjC7eg25A19D/UfL/BXFiKgs1nakGU8849ZtuXLfHuoXQ4JINk2CT6g3xkeHvp0SvuAbEDOMmNd9yM8vL509lNInaIlmPoNvjAG4O27jw57/IV2O3cSM5srYgZ232xq8vvD8PlQuGDY/gj3eqDxby/zIpqo3aYxZb9TGNt28vL5iiwoIuUYwIfRYFGkEkA49Vhzx5593lRCLuAbK13QeP3t+XxqumjdUXLWpLDY6F8GPh5Y94qQQynUNdoA3gijmCPCiyK4CZNJAIsbddeSCCcnn5eVZ673vsFAuF5CrmSFywIa0HP1UHn5VSzq/peNS+r9kbUsmW4VyXnBZNFlxUgHPoh3A2G43NE8ItYL2K4u+IXwt7aB/VU96V2G4X3AbUDwmOb0TiLJOEC2xLDGNQyNs9KJhGjhUOpw5kaSVSDnunC4z7UakzZJRxVF02bdOlv5VhPG+JW0n0cu4LKBoLfto41LHd2zqJPuUfGsig7d40VAGwFyvU+NXHFvq+CWUf/AJi4lm/CFQfrUH0ctTdcTQLjuAtkg4zyHz/Ks+CNRZfnm8k0SSqvaFRsqDQD0GKmvkaLhEdvHjtbls6fHPIflVulta8OXOr0iZclnPIfpVM9x6ZPJezjEariFm27wZTn4VoulZMkl9vk06wRxcPWG3I0hHMQzsRju4+J+FVMlvbBUN/MoKLspbnnf9quHdZAjIcJoGMeJ7x+ZoWS0t3lMrwqzkblt6zWdzLo7xxmvXT6Mr9IZIfR7JYRgM00gGfFgn/8/nVEzeFXf0rkj/2ksMeAsMQUqowAckn8xVEedXI83kVTaOUqVKgQVKlSoAQOKepzTKchwc0AFwwyy/y0LdOeKc0TxSGOVHRxzVulEao0dCT3Cg0Y5Z60WbvtkEc6R3CjZWPNfYdj7s0rY+1MVraWslmssrSl2O/ZkAKPfRhsxdyNcWDiUhQGj5PsMe/lQUs0PYaIYxCnjqJPz3qVbpo3tZUGNYJ1Kdxg4/al+7mi6LgnRNFIY7W8TBDooZgdiCDtQ30jCyXMV5F6tzbrJn7w7p9+wP8Aqq3j4hFchk4lEswkXS08Y0SAHny57+NRcW4aI+Aq0Ei3MNtc4ikA72l9tJHjnTy8DUOfK3DSh2XJ4Twu+gMaS27XgjBCr9W7HGd8d0/Csjdy8Nn4bE6PIJhNpCyNkiMLty860/BmHbcPkcHWFiJ1DkSoz+tZi8seGRRNHrlW5WZl0k93QPPHOlwJxtN2Pm/HdRTzdmB9W+TnxqWOeAJiWIlvENUjWcH2ZB+MUw2adJF/GK08owNJjfSLf/cv8aQuLbrA/wCKu+hD+tP/AHBS9CH9af8AuCi2RtRz0m36Qv8AipCe3J/kt8a76GP94v4xThZqGGpwR1w4othtQ1ri3/3LfEUhc2uO9A+faK76GufWXHmwrnoaf1D8Qo5I2oXpFt0hbPmaihMbSMZDgHpmpxZr/WPxipVsrcgZbB/9Y3/ajkZJIPsF4P6PdG5nIfsfqgHxlsirW6aOO0to1z3LaNs7fbHaHP46prGy4WS6TtK0zjRbqGOGkJwM4HL4VuOJfRuBJ5ZL65LIWJRIxpAXkAW9gG371n1WVQpSNOlxud7TK8et5pPQEJWOOGzTWZGwquxLH8xS4Hf8P4c0sUzs6SINbnKoSM4G3eOxO2cHqOorvpFcC44vcurZVW0DBzsMAY+FbezhseF2UFva8L7binZBriUH+WSM6S55DyHvFL8jxwikrbHUFlyPml7M5PfXV0+pOC5gX1AQ0ePYM4/M+dVfFUuFaL0tVj2JWKPkoz8SSd9zmtde3yIAtxdRQl2A7GAB2JP3iP099ZLjAIv5M5Kjlk5299XQ3ONyQmdKLpMHbiXEEXC3lwAP+KcfnUB4rfvs17OQNwDIa44yAD1qNkVeQqaQnzZPbIXZnJLEkncknOTTKkI3prCpKhtKlSoAVKlTlUswA50AcwadFG8hwikk+FFQ26oA0vezyHT+9FPbuyYilWND0Rf70EgU57KJISwLKSTg8vKmRSd8Zor/AGaOs3v0f3py8OQEEysSD/TiggYfEgnzzR6kG0tyWVWVmGCcbc6jS2jByzSE+RA/SjIZo0h7JoTIPvuP2oGi+SS0cLcqCVGQRnOw2q64OjXNhxCyfSe0hwHBA+s6ED9edUUYtRKJFt2BBzp7Tun3Yq1trwIumOCNf9TfoRVeWG9GvFNN0ztg7pDZlydSxrnf+lsfpTeJcN4fO15dcSmuUCzEZVlwBq2+yTRVv2OjTJbgqAVHfbIyScjfnknnmhPpAsk0LIoXsWl7UPn1jjGMfpUqDRrcFGG5qwa3+jfCbuAT20t08RJAYOv/AE1Iv0S4e3J7r8a/9NO4JxuO1ilgvLchFAZOwjJO/PO/srRrp2KDmAeVacWL5DDm1mnwwucPuZmpfodaGM9jJcLJ0LspX8qFP0Nk/wDNRD/Sa3MJ8f2qTHPn73rNqm8MqNv0+Om1sG9tM8+b6HTj1buD3hv2qJ/olcrzurf/AJv2r0Qjz/8A2f2oa4jDA7/84/aqseojJ8mnL9LxpcHnrfRq4XnPF8D+1TR8Bg0gSmbX1KEY/KtHer4Yz5jNRWsTM2GVSSOiH966UFjqzlZMGy+LKAcGsWZkWWcuOndqK64NDBDK6tLmNNXexirGC4tbDit16YWRMkIWQspPkByo3jtxBasbdoQxuYdCbAAYYHJocIuO4xvNFSUdvZmOHrbx8QtSr3Gda4eNgpjfIwckeNbDjHBZ72ziniuL+6mk6zS5TTvue4Pz61lYLGS5u0sIxGhuJAe62yryxuK0sfHuKXV9eelXTtaQW0rLCMBVxsK5+e7W3watPJdPyUHALaN+Jq8+BDbBpZT0wm/zOKLv+I3RsbaXtGSS/klnkXpuQB8gvwNByl7D6OqW2l4kds8+xQ4z/qfP4Kdf5NxbwH1YLdE/z408eW2JVJJDrGMyX0LOzEAlmLHPIZ/OouMODd4HQknHt/tRliArSueSoB8SP2qmd2di5OWPOreo0hMnY1uY8hTG3px5k000ohERvUbVMR51A3rUAcpUqVAHat+H2ISIy3C4J5DbIHjQPD01XaHGQp1Yx4b1dqVeFiFDnqAwOKhsmP7lUzBmYnOQcY8Klgm0d1j3fyoWXSLtwpyvIHPspxBB39WpBlmNxkculc6ihrebGFbl+VSSySxd5FVhnYH7XlQQS5GPzp6xu+ezRmCjLYGcDx2pjvBfW7yQlYnC95DsF8xUEXEnj+qvDIZIx9XIN2Hl7KmkAYiSaC+k4A1YzuR4gdfdRdqyuFYOCrbgjfI/zmKqRf3Eo/h4Ao55J2DeI/ap7aG4ctI0mkudRWPYHH9vCmVDQbTNHZTWyMBcBjgnI1YyPdyI8KsZL2wNtLAtn2iuAFfOnl1Oaz9tGiEbjkCCvh45/X41dWd/bQxhbaISXABDADVgeedgN+XP5GoZ1IZE40yr4nwyVAs2XihkTCsy6c+RztV6ssoijAtSMKMapAM/AGuYeKMtxGX+G31QKchQdgc/aG+NuXzAd3xR2t39CXI06Q59ZBjAbHUVZgyRhK5GLW6WWbHWMONzMEJ0xgAH7Z+XdrO2t87SWznilyQ7qQkhBLbjI6Vd4PoKSM5JMQ1k7blfzrFWCqvEOGD0cK5mTvjr3hzrRq/jcU6s5X0954ZHFummuj0UXkTEhXIIHqt3T8Dg1SQcZlveMmKNXW0SNtOdu0IIyfZQHDb25uZuKRzTSMsUDMgcL3Tq5ihuFcdjW7j9IgNxLoIMsSZbfHTrXMhp8bb8Hop/UJrZudrz7L3iWTbTSKSGWNmz54qv4K81xBdu7s5VNjvkbdMgVJOLgTX80Tl7Ge2fT91gBsRzU0HwO/S0t7lLotqkTu6I2ORp99aPiko1ZRm+pYsmZSUXS/sz80gFtq7SQh8d1xn51Foe6mj1yMInOlWlfOKYpjmuAZgEXTg+2uwxhezaWTAJDIvPO9R4Oe6TLXgUSxcSjWOMuiEs5fYowGR88UaFY2F+seO1naK3Qn7RZsn5CmcE4fcySXUttD2paNgNLd7Od8Dn4VFfG54fBbJcRSQyG6MuhwVOFAAP/M3wqibUp15NGNbYbqNDxj6Ite3Ec4vFjtrWCOKKPsyToQe7mc/Gs7eaW4hcOCNIcgb9BtVlbcUhvr2ItJq0HUWYH9WNMa04WrvrvNbEk6e0BJ9woxRnDiTstnLHLmCr+QDI9CwDjtZCCfuhTn8qqRVhxV4YzHDb9yNQTgjln+1VpfA5GrmZZO2R6133O/lTS2a623hioy46VApxzjbNMpUqAFSpUqALHgzwi5YTbgocL/UegqxWVDqa4gNuibg6cav3rPZOK5k9KiibHytrdmxjJzgVNFIDgNQ+aQ55qSAvk35UTBMMaJCSOh8KEjkViAxpx7p3OR0oAnls1eUMSVz4df70alv2qsydnJIgxoY940LDMCAkm/hXJo5YZfSbdiGHPzoAsgIApkj1mLlrI70Rz1H+YqK5v44iwkYPJkHQh7rfeB+yaGtml4pcOyzC3GkBwp3YfrRkEKWZEaaY5Md1ydpgeh8KsQHU9Kl/+ZYxKN2jXn/6j5HcHH70Yt0loOyjUZblGOvmfLG+eXwqr9IeaUw8PU9wagTzi8QPEURbxw2kesOMtuZf6ufLwPPbrTDxm0y9sptDLNePvH6gBz2J57Z5n96NkzMx4lLCiahqMaZTtB1fwBPPHI1nLWVpmEvqxIRpU7Z8CQeQ8M1ZLdG7fs9Ra3hbLBvVLeHl51XJejoYcsXwx/EOCueHR8Rgii7ObmmFJAzsR+w5VnbZVTiPDz2kgHpEeAdlxkZ9laq7u3cSyZ0PnQmk4OojBPuG2ay3E17SW4cyKkSth0AxqPUgeZyffUR/cp1MaVrsDmvGjvpwju2tmQhX0jGeuOYpzI0jRNIqFQxURxxlseeB7KjnlSQQo8ncixoQIQSM+NPPo6zKywmPv7mUkZGPEVYkc9llwa6isLi6W51xWskLBo3UqsnLbHid6B4hZW9rOqRq0kUuGhkzsVPIe6hbzs21tHGm7gB0YkDblvROe24JGsxYejzDI+6ev5U0pXwEY82Q20bxcSVUGOekAA9POmXRKyw5yMN0G/PwpiaHvwIIBKmcKh2z7asLfh019f20MAjQagCdQCr16+GD8KrbSixlyybgHF7qy4i8dlG0jzDRgJlnwSdxn/MUTxO14vx6aO6W0kMCppWVoyiHxPn0GR4VsIeFcN+j3CZmt5Vub2WM9tcgesccl8BmvPjxK2Z8tAAfHQDvWCORZZucF/JucZQxqE3x6DIeH3VpJpj4cxkT/wATWuD57muXnFuJSMIzdI2TjQG1FT5nl86dH6PfW6dvJKIVYaEMmF3znb3VKLThqRBVuMjOQpYGtEG2uTPKl+JR3hl7UtO6M52Ogg0OdR8fb4Vfi1s3YKkitn7LS/tVVf4jneOIaYwBtVhUAlfHNNKjpT251ygCMjArlSOe7UdACpUqVACpUqVACpUqVACHzomGQN3X50NXRtv1oALxpPMmi7aYHAf3edAwShu69PxoO3KgCe4t3t5BcWxAI3wOn+eFTRyzcWlELusMSjUwG5b965bT607N8Y+f/eoLm3e3kE1u3n3dsf54VKdAWzQpZR9m21uG1JIMaom8/HO35cqDT+OlaaUaLVW72nkzY9Yj4ZpsU8nFZkhlZUiUamCbFsfrVjcqlpCZ4dKaBjR0ceB/enXJBBfTvH2dvAoEzHCBRsvs+6fDp7qs7aZeF2BRMOwGB95z+lUvC4Hlla4LdnIN4kIOAuPmOlE3NwxlDOCvo+SVPV+mKbja2PGbi7QZPdCLSiksIELEDq3/AHxVBfvBIdSyxk6duzUj45oiKcRQSSSzvHJLkDQM58agSOBwsFpMCZV+sMo2X2Gkir6JyZXLsbbtc9keylOGTDgY2GfOiGkeK5VsyyuG+x3c7dMUy14dF9Y1w5IBwhQjvGiVt7QKoX0lSDnOunjCRS+eAC4mkmmmc20hyNI1ksU95ou0Gbe5UTPJI0Q/0ldx88VK0I7KX0Z5VYAsFcjfz86FinFvLHkt9YdTZIxvUNNPklMr3k7ScvK5Jb1ioozh1y6cShlUgsoITUPunGcUy5tzaXStCzGPbDk45+fSuAkcTjJdXzINw+rn51W1aodNp8F8ONDiNvOrQ9nMqatQ6gefOsqxLMTRNmSrysOQjbNCnyquMFHoec3OrLG9fTw21h8QG+R/eq00fxU9+NP6Rn5CgDzpkIw7go/+IRnooYn4VJfHVeyj72PlS4CM3jf/AGz+YqK6bVPKfvkfOpIISaZmkxptAHW5UyunlXKAFSpUqAFSpUqAFSpUqAFSpUqAO/ZB65ouEl4+9vSpUAMDFZMCrS1OuMBuRJBpUqAK2f8Ah7kNESpxq26UVcTyX09tBMcIdOdO25POlSpkQWRXTHeRAn+EbETdQPOgZ2Y2iOWJaQ6mJ6mlSqZdEomtbWG5GiZciO31rgkbkn9hVVw/T6SuuNHGDswyKVKoj4IYTxEgW9roUINUgwu3UVXs7AkBj8aVKml2C6C+FMzX6amJ2bmfI125umaLstCAL9oDfalSoXRD7OR8QnjwV048MbVNb8Ql7RcxxnLDnn967SpUOixtYYL7hd3O8EccqZAaIYyPOs4vrL5mlSqH0SybiJJnGf6f1NC0qVQKWvAP50p+7+tDTbyufvH86VKgCA02lSoA4eVcpUqAFSpUqAP/2Q==",
          fit: BoxFit.cover,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                Text("Like"),

              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                Text("comment"),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.read_more)),
                Text("Repost"),
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.send)),
                Text("send"),
              ],
            ),
                   
          ],
        ),
      ],
     ),
     ),
     bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.abc))
        ],
     ),
      );
    
      
    
  }
}
