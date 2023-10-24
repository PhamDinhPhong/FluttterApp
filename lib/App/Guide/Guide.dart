import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class guide extends StatefulWidget {
  const guide({super.key});

  @override
  State<guide> createState() => _guideState();
}

class _guideState extends State<guide> {
  late YoutubePlayerController _controller;

  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '_ZpPhso4pXw',
      // autoPlay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(children: [
              Container(
                width: 400,
                height: 207,
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60, left: 20),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 30),
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYSFRgSFRYYGRgYEhgRGBgYGBgYEhgYGBgZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHBISHjQlIyw0NDQxNTQ0ND00NzQ0NDQxNTQ0NDQ0NDQxPTc0MTE0NDY0NjE0NDQ0NDE0NDYxNDQ0NP/AABEIALEBHAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EAEEQAAIBAwIDBAgDBQYGAwAAAAECAAMREgQhBTFBIlFhkQYTMnGBocHRQrHwFFJikuEjcoKisvEVJENTwuIHFjP/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAKxEAAgICAgIABQIHAAAAAAAAAAECEQMhEjEEQRMyUWFxIpFCgaGx0eHw/9oADAMBAAIRAxEAPwDzSpSK85C003S8ZNIrA9CN/Gd5nRnWitJYxYwokjaICTCyVoADtFaEtHxjAFjFjDBJIrAQDGOFhSkWMABYx8YXGLGMAWMWMLjFjCgBYxsYbGLGAAcYsYXGLGAAsY2MNjFjEAHGLGFxixgAK0WMLjGxiGDtFaExixgMHaPaECx8Yh0DxixhMY+MQwdorQmMfGAArR8YTGLGIosuOsLptjc8uUBSh0E0JFqdKpBK++C0ulDe1ytz7z3SxCI1to6AlpNCl/oYLV6C7dmwHI90Oj9q80KZBG8KDRkng5xJDXPdbaZrUyDY7EbToi4VrX2lHW0w24G/f3wBpVoyrSQEmUj2gQRbeRtChY+MABYxwsKKcWEBA8YsYTCK0ABYxsYXGK0ABYxBIW0QEAGCSJSEiMBgCkQWFIiCwAhjEUhI94hor4xYQ9vCNiIh0Bxj2hcYsZIwVo4WExixisCGMfGTCx7RNlJA8Y+EnFIci1EBTlumZVRbSwj+E2RkWLyBEkjXhQBLABlCJqLe6QqrBHlvtFYBWq9byBqmCFjHQCAWJt41pPaSCxkgwskok8ZILAQlaTDeEZUhlSAFcpG9XLYpxmpygKhSRKyyyQbLAQArGtDESJEABxSREVpIyNorSYWOFgMhjHxhAse0TGCxixhbRWktlUCxixhSsGxtIlJLsEm+hsY1o3rPfDUtO7+yL/EXmTyxXs0WOT6QMLEVmzwbgNXU1DSVRkFza7KAAOpN5u1vQSsouWRR3s6hfzmUs8V7KUHdHD4y1S0TsLhWty2vadTS4PptNY1XOofpSpErT/xOd7e4S+nFdbb+xxpINhTpogQfzbk+M48nn410zsx+FlkrqvyedIYUGV1aSvPYs8wsKYZWlNWhkaUmAdt5Ep3xrxO20dgQakIJxaLKM1zJsB1hFMEsmDCwoOBJKshTIh0EpMVEkSW0oQdNJcpRtgMtDwkXoT0bQ8KohFUIrXUFnYXJJF7g9JzPpLoUoVSicioe3O173Hyv8ZhjzqcnFIpwaVnJ1Kcrus0K6ym4nRZBXIjYwhEhaIKI2itJWiAgFDBYgsmBHAibHRELHxjynq2LHG+wANu8zHJkUVZpCHJ0W7RWljgeneoTSQXYqWCm2DYi9iDyPjIh6TH2mQ9VK5rfwIIPwI+Mwj5Cfao2lgaVp2QSmTNbQ+i1WsEqKl0bmWdUB3tZWbr5yvwjjB0zM1MBnZcAXUFQDz7Jvc7TR4+KitlWfOqoQBle9NchlgoAAFr726gzLNKUlcVpDhFx17ZT4v6Ovp3CMjU0YqD/ANRlUHnkAMzffb3Svw7hyZtTquwvTcIWupL2BQ4c1Gx587zqPRX01NMilXJZL2BJ3X3GWvSr0RLj9q03bVu2QPaHW/j+c5G5PRSyKL2jlOBat9BqEZ1K37DqwsCjCxO/hY/CdDTTT1q2I1FkzxDBXwAJ2BcgL4XvOX4gNTqVVGDNi17nmSARuTt1k+F8Cr3I9WyMVZGdyopojCzMd7k2J2mcoxlHb2bQ8jg3xdWelHgyaf2aKvts71OyfEgA28jM2tqtRfbUUUHRVV2A+OIvM6n6ZGgSiKHpgKq3b2sVCliLHmRfpzkh6fUvx6Xfwfb8pwTwZb/QlRrHO3uW/wDvueYAyYMiokp9WeUPeTQyAhEhYBA0QN5EQq2t4x2AMpHhFQmTahDkKgSwgEYi0msaYhBYVJCSUx2BaR5dosJmI0OjwA6XR8cq0lwUggcshe3u/rMzV6tqjF3YszG5J5yoK0g7yVGKdpD2+xqzSoxhXeBYzQRAyMkY0AoaOIo4isKEJICIRxJbAerTF1HQi9/H/faGSitrWvy6XkUAOzAkeBxYd9jY/lOo4HwBdUjNTzXHsgMVJ5bbkr+U8fyYzjK3bR34ZQa+hj6fTFbMMV6g3sRaU9TpFLE257m2287Kt6IahbBVDC/S3LpfxmZrfRvUKCfVvcHopPZ63AkwyNfMi5U+mcuaAAIGxItfqJDU6yvgtJyCqWxYDflbe31E2v8AgzggMpUkHmrMp7vYuVPLY2lrTcHJsBkqs2LkoS6MbBSGOzpe+wIO422tE86sXB92calW2950nBPTPUaXso2SD8Dbr8O6LifBGpthVUdoEpUXkwG3PwPMHcTmq1JqbEXsQbbHn4iaRnGejCUGvuer6H0o02ssqrTo1z+Gqp9W56YupFj75zvpdS1V8at0Qm2CbU/ja+XxJnGK9+fO1wfv3z07g2rOq4ZnV7TUnairHdmUKrDc92VvgJEoJbMZRraOL0/DkRBUqs3a9lEte3K7M17A91pImh/2z/O32jaijUqNZEZgLAkDsr4EnYQg4O3UoD3GqgPleTa9s6IyVaOXj3m5x3gfqTdLsBllvuALW2tysb3ub3vsJkppmKs4tipAO4v2r2sL3PLpPTxZo5FcWYTxyg6kCBh9PTLsFFrk23IA+JOwggssUEcdpLnEFmsD2RyuSOm/zmknohd7J1KBRiptcc8SGHK/MG0nRpkkAC5JsANySeQAjJXe98jyINib2I3E6TQaGnSVajlGR1UkuvsXTLbmGNyota4yG19pzZfIWNb2/X3NseFzb9IHwvguZGZK7KcQp9ZZmxGxsLGx3v5kETWbhml7Kl8WuFIzUtcvblbbbw+85ziPH3qAIhZUC2HaObgG13N9/d+fOZYqE7LvYEnusOsxjizT/VKVfZGrnjhpK/uzqdZ6PqUNSg/rLbMlgWBxJNiPa5HoOU5xxY2OxvaG4Zrnp/2hAxWwtmA3b2so52ONjYHbnzE1eLU0rp+0JbO2TgbK65EGooO+zWU+73zSGWeKSjkdp9P/ACRKEZpyjpr0YYkoAORCqbzu5HNRMGSV4G8cNHYw/rIxeCyiLQsCbNIEyBaRLR2BMmNeQvGyhZIS8kDBAxw0VlBwZIGBDSatJbAto4E0eF8T9U6PuQrAkd4B3ExQYamhJmM0pKmVFtPR3XE/Sj/lkqUXUOdS6OGVDUxIcoSpB2sBuPdMIek2qY7VG91lI8rWmt6O+jq1KTmumKlgy1SQjLYdGPNe9ZZTiGh0XZpr61+RYgHf+EHYe/ecLlGKao2imyjw3j2tQgspde5kXDzAFp2+i9XqaL9hVLp2xcFcseeQvaxv5TAqem9rFUutthcfG6qv1gKnpo7KfV01Ubg7b5bfh5d/PwnNLPC+jVYZ+v7lf0udUppTuCxrCon72ATB28AzAW77XnnHE6mTm3gPITW9INU5ObMWZzux52+kj6McEGpr06TEgM3aI5hbEnfobAzTDVcv2JyOnxMvh3D6ld1pU1Z3bYKB06k9w8TsJ6dxSgNFok0KHOpYu+IJuzG7EW6C9hfoBNI16dJamk0S06VRSFxIKu4FrnIjtNz5mco6uzOjuRUB7SsCrWtta/TnHOd6RjxcpJPSMZnewpPkuJZlDArlc3Lb8zDU9JcXsx8bS4dS9IWNivcwDKfeDK6cTLbjS0iL88LfK8yc6OzHidUirwbihUu1VC6sgpm5uFZ2udm9oEZi1x175HX8A5VKBGDLmVd0DKCXxABIJBKsAOZsNt5yp0OoYFrvivM9prctthYHcbQFdKqAM4qAE2yPZF56cPDcJXGSS/Ojlnm5qmjVGke18G/lMu06Hq6bq6P6xwEQC4VBkjFnIP7oZcSPxA9Jl6bh1WpSeuGdlQAsQSWCnYbHmt5WbSuVzya3dkfuZ3Q8WeXUZLuuyHBpXT6s630f0z0y7Zhcr07GwBWxYlm6Ds2sDe/hK+u1Bd2D3KKzsAgsWdkYBxyGOWJI52LHqZzPq8gMQ3cQLkX27yb8+lo7aS63s3fubHnY3BN+ZG/vnJPw448rlKav6fQ0+K3BRitG1S0rhWCgEnsYlCWtYPdSRYG4A23N+68saHS9l3I7YzGLCyWZBiVINywJO3LYe6c+nDtxcPv477/DxvNrhXBKLuVdyo7IBPUsQtuQ3ufKU2o/xL9iFBv0LS6UENmGHYIX++bhLjmRfna9pd4LWNLZ7i7XCnLFigN6bAdGJXmLSGq0lCoqUqaC+Tr6zNRmQQNwSQLXHvvtMxeDHMYqwUjMMHU2G5vyHQfC4JtMFxyppur+xpXB2mX9Xw4I7qHUKozUtcFgbbCwN7cunIza0uh01JUNbtl1HYU7KSLk3U8rEEk2t3Tl6PByXNMviuGQYtYEEjYbe14eEjqtOVYr6xyABazHv3sCd9rnaW8SlFL4nXf1BpxuTianEuHYuopgsjtZL2yy/ca34ht8CD1lDUUWpnFxY2BtseYuOUqq9ZMMam1jUU5+yQRcb8m5HbnbwkqnFKjPZyrsQF3Iv32BJ2HLe3S3fN8eLL0pJpd/UznxS2mr/YIDFcy+rp/1UCG/JHV1O5uu1yOljcCynvvCI6UwlSm6MzAoUyQvdri9mFvZPfsZPxVZLgzKZowtYsWAHidye4CLihCgYXJvuSybAHqATjtbn8JmprOjKLEqSMhfEMdrc+vygsqatEyi1oumpG9ZKeo1VibLYEnE5Ai1+fjyMgdaLWsL27+Zv9o/iIOLNJXkw8yqGtGXasB+vGFqa5b3UbXva97fw36++L4iDizSVpNTKWn1yfiB9ki1+ttiPcd94N9Xe1j8+XlJeVD4s10aWtBWIqJt+IfEcz8pkUNXcfh8yCAOu5sb/SbnB+OU6RJegtS62W7YlT33U/nMMuT9L4mkVtWdVq9PrdacnUikBYKtgo7wADyB6yzQ9GKYZVVld0Kmqu+WLAG4JPceQ6GUNP6ao6g1FKPSdWpmkQQVNg6tk1m2vA+lfG0fDUad0V0sAyVR61+qkUx2kUC4OViOW+1/LlinLTZ0LIl0jVraqnp6poLpqYC3CtWcrmp/ErnskHaE14dyP+QpA88mrLiV5kXB69D32PScNxz0oq6paatt6sGxuhYs1smuqr3DbfruYb0f19d7quppp2gMKjAC3MsMhh5EHY+EWTx5qNxr+aCM25U3/U7s+jlDUphUptRbkvbVgO6xO/5wXo5ww6LUCg9iciVYcmDCwv3H9dIHS6orS9ZXrUEbFiQjhl2ONiQWFyDfbnfbfkbhnpBTq4lHVypyVX9tf7t7MPhtMo5Z41U4tK+10OUeT07Y/GtdlWaitIvUsVVlW7bd57h3zkeLVKqsBVzDryDjtAeF+nunc0NLRr6hq6O61FBqY7E79luwyg2BPQkGamsoUq6BK6h7D2scSD/DuSvnFl8jDD5pd9Fxkk1S/JkcAoaDUUUD+rapiM1dirhrb2Unv6iX39D9CTfHyqOB/qlaj6L6JSP7MsSpZbsSpx5qATuRzsZaNainZWlTAHIG1/LpKn5eLFFc0nf5JqTk+DZ4t/wKoOqfy/0g20VRCQcCDsezzHduOXhNRuJvKOp4ixPOe9HK5dpHNKMYu1YLTl6Yamruiv7SqeyfhaSXSbYh2HvUH6So+qYnnLWm1T3H1MqL4vlFUP4spKrGXg9vxN8FH1lmlwZLWZnsTc9lPtL68Qfa4HnCniJNrgTDJnm3/oqOONAafo9SP4nP+FPtNDS8EpoSQGPvC/aE03EfATTocR8Jyzyz+p0RhEzG0NMG+HLl0IvzmNr6aKxIUg8vaYc+f5mdXU4j/D8pg8T15J5DyH2jxTlYZIxoyqTjuP8AMTLHq0IuUH63k6Gt8F8lmkvERj7C/wAq/abttdHPe9s5zUY39kfKWNAgP4R5CF1upDfhA/wr9pDRoCeZHu2m8JNrZE+zaSgtt1/L7TO19NB+Efr4S6FAHtv5j7TN15HiffKRmzE1JHQSm0u1rd0qsR3SyQREbEd0ISJHaAhgBHAj7R4gHEmDICSBgARWhVc98rgwimS0Ugwc98RaQBivJ4jsneK8hePeHELHlrQaY1C6rcuKRqIB7RKMrMAOpwDm3hKd5OnVKMHVirKQwYGzAjcEEcjM5wuLSKTpno//AMecTDlELMzlHVrkkAH2SSe84jbrNDi3HAmSBTkNt/necXwTiy1KjCqArsocPTGFRqikWsF2zYE8gMrb3nQpq6jKX1dDMqDk6MErBQL3ZWAV9r7r3dZ895PiQ+JUtbtX7s9DxskU+UlevXqjS0FU19KwuckqisCCclAuCy2IPOVf/sNBezqFFSoNi6saZI6Zqu2Xedr90jwrU0cRXovXQG9iVU33IPsty2OxHwmtT0OjqjM10pk8xTKU1J6sUYXVj18+s2wxj8j9EeS1z5433+TyU/Hy/rK1Zz4+UfP9bwNVvGe7E45MHlvzlvTtvz/OUst+Z+Es0X36/nLfRmuzTy93m8Y38PM/WDD/AKxEV/1YCc0kbxZo6Zj+v9po0W9/kZkadyP0JoUap/Q/pMJo3iw9X3/rzmNrjvz/AC+81XZv1aZGvbvv8vvHi7DI9Fek3iZaWptz+czUqC8uqQRyHznS0cwKpV36eYlzRVPA/KUqq+AhdK2/L5f0mkeiZG8H26j4CZmuHv8AlLAc26fGUNYb9RKRLMrUCVGMPWt3yq0uyByY0aNHYErx7yEe8VgEBj5QV494rALeSDQAMkGgMOHiygsospIw2UWUFePlAAuUWUHlFlEMPScKwJFwGBI5XAO4uOU69dQ1R/2c12NNqYYGwzcG/YL8vZ35XIvOJymzw/Vqafqgn9oSQrAAeKsX53HT3CcHmYuSUl6/Gvub4ZU6NfiF9LgtGpgKlTBlYBkF/wAYB3B5X33vMniXDKhck1MjYbmy+Q7pa0zgdmuCahuAzMe2vcL7W716895na7iLU2xRzYAcwGI8Muu1ue848cZLS79uuysivaM4tfnaDe3h8oS1+7yA+sC48B5z2YnPIgCL85Zpt4/nKl4ZL9/+YymSjRDDw8zEXHd5XlYH3ebH6SQJ8PI/UTJo1TL9B/D5D6zQo1D4fL6THot7/h/vL9G3e3xZh+TTGSNYsuOgPUfr4TL1aKD+vtLbr/EPizH/AMpm6l/0LfeEOxzegSkX5N52+ksIi9zfzGUQ9zzt8BDrT/j+Qm7OYlUQdAfmfyhNKzX2yHn9pVen4k+QhtNcfu/E/aXHoTNpFYjct9PylLWKB1MsUsiOS/C8ralD4/C8dgzIrGVyJaqhR3/OV2jsghaNaStFDkBG0VpMCOBFyGQxj2kwsfCHIAdogIXCP6uLkAK0e0LhHwi5DBRQuEWEXIYKKFwiwhyGCh9HXFN7ndT2WHeD9QbEeIkMIsJMqkmmCdOzR1l6jGmXJp2FmIW2XMKW+vnLOko1EUKUDW2BuouPdeUtBqnXsCzDopNveAfoZCnqajXKtYZEY3HZttblOKUJfKq0bppmcX/u/ODZ/d/mkS3u8h9pCekkczdkspNTBx7nvMYiwKtu7yEmmoJ62+AH0lVWIhFq/q5ktDUjSpOf3v8AOR+UtIR1y+DOfrMlNUB0P8zQp1qn8Pmb/SZSizRSRpOR/GPj/wC0p6hh+8fiT9DKrFW6qP1/dkTTT9/y/wBoRjQSlYmYd9/P7ySi/wCH/V95DYeyT5iTWs/f81l2Zjmmf3fkfvLGmPS4Hl9pXFc9fp9pYoi+9z5g/WCYGtTJt/8Ap5H+kr6lP42PxNpJGYDn+f0MBXqE8z/q+phYFGrTHj8/tAGHdR33gysViIRrQlo+MOQA7RCFxixi5DIAxwZPGPhDkgIhpINFhGwisCQaSBEEUMYqYhlgER9pUuYszALLm0VhKfrTG9eYthZdxixlL9oMX7QYUwsuhe6IUKfUb9dzue+UhqDJ/tElwbKUqKIiEUU6zIRjxRQYCiiiiAkvOWKHOKKRIpF4yvquUUUhdlMpiSEUUtkDiFSKKIC1TiMUUBgWjCNFJYhxHiiiGSiiiiAUcRRRDQ8UUUBjRoooxEWgniigIG0iYopSBkDFFFKAYyMUUYH/2Q==',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ]),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8, right: 100, left: 20),
                      child: const Text(
                        'Tuan Tran',
                        style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 24,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 5),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 0,
                            ),
                            child: const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0, left: 10),
                            child: const Text(
                              '127 Reviews',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 14,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            width: 72,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    color: Colors.grey,
                                  )
                                ]),
                            child: const Center(
                              child: Text(
                                'Vietnamese',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            width: 49,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    color: Colors.grey,
                                  )
                                ]),
                            child: const Center(
                              child: Text(
                                'English',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            width: 48,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    color: Colors.grey,
                                  )
                                ]),
                            child: const Center(
                              child: Text(
                                'Korean',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 0),
                            child: const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 5),
                            child: const Text(
                              'Danang, Vietnam',
                              style: TextStyle(
                                color: Color(0xFF00CEA5),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                                letterSpacing: -0.17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Container(
                      margin: EdgeInsets.only(),
                      width: 151,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(1, 2),
                                blurRadius: 2,
                                color: Colors.green)
                          ]),
                      child: const Center(
                        child: Text(
                          'CHOOSE THIS GUIDE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 343,
          height: 134,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: 300,
            height: 134,
            child: const Text(
              'Short introduction: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Stack(children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            width: 343,
            height: 294,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.green),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 294,
            child: YoutubePlayer(
              controller: _controller,
              // showVideoProgressIndicator: true,
              // onReady: () => debugPrint('Ready'),
              // bottomActions: [
              //   CurrentPosition(),
              //   ProgressBar(
              //     isExpanded: true,
              //     colors: const ProgressBarColors(
              //         playedColor: Colors.amber,
              //         handleColor: Colors.amberAccent
              //     ),
              //   ),
              //   const PlaybackSpeedButton()
              // ],
            ),
          ),
        ]),
        Column(
          children: [
            Stack(children: [
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 27, right: 20, bottom: 20),
                width: 339,
                height: 129,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 23,
                  left: 30,
                ),
                width: 333,
                height: 123,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
              ),
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 160, top: 20),
                  width: 3,
                  height: 129,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 28, top: 59),
                  width: 338,
                  height: 3,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 28, top: 102),
                  width: 338,
                  height: 3,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 50),
                      child: const Text(
                        '1 - 3 Travelers',
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30, left: 90),
                        child: const Text(
                          '\$10/ hour',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 70, left: 50),
                        child: const Text(
                          '4 - 6 Travelers',
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 70, left: 90),
                        child: const Text(
                          '\$14/ hour',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 115, left: 50),
                        child: const Text(
                          '7 - 9 Travelers',
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 115, left: 90),
                        child: const Text(
                          '\$17/ hour',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF121212),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )),
                  ],
                ),
              ]),
            ]),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
          child: const Text(
            'My Experiences',
            style: TextStyle(
              color: Color(0xFF121212),
              fontSize: 24,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                width: 343,
                height: 282,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.grey)
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                width: 175,
                height: 193,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 198),
                width: 165,
                height: 96,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 108, left: 198),
                width: 165,
                height: 96,
                child: ClipRRect(
                  child: Image.network(
                    'https://media-cdn-v2.laodong.vn/storage/newsportal/2023/6/9/1202817/Cuc-Tinh-Y-Yy.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 220, left: 40),
                child: const Text(
                  '2 Hour Bicycle Tour exploring Hoian',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 235, left: 40),
                    child: const Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 235, left: 5),
                    child: const Text(
                      'Hoian, Vietnam',
                      style: TextStyle(
                        color: Color(0xFF00CEA5),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 255, left: 40),
                    child: const Text(
                      'Jan 25, 2020',
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 255, left: 170),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 255, left: 5),
                    child: const Text(
                      '234 Likes',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )
                ],
              )
            ]),
          ],
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                margin:
                    EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
                width: 343,
                height: 282,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.grey)
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, left: 20),
                width: 175,
                height: 193,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, left: 198),
                width: 165,
                height: 96,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                  child: Image.network(
                    'https://image.voh.com.vn/voh/thumbnail/2022/09/18/D721E9CA-9153-4E63-BAED-5F1B9051B0EB.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 98, left: 198),
                width: 165,
                height: 96,
                child: ClipRRect(
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 210, left: 40),
                child: const Text(
                  '2 Hour Bicycle Tour exploring Hoian',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 225, left: 40),
                    child: const Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 225, left: 5),
                    child: const Text(
                      'Hoian, Vietnam',
                      style: TextStyle(
                        color: Color(0xFF00CEA5),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 245, left: 40),
                    child: const Text(
                      'Jan 25, 2020',
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 245, left: 170),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 245, left: 5),
                    child: const Text(
                      '234 Likes',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 12,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )
                ],
              )
            ]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 16),
              child: const Text(
                'Reviews',
                style: TextStyle(
                  color: Color(0xFF121212),
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 8),
              child: const Text(
                'SEE MORE',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF00CEA5),
                  fontSize: 14,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                // margin: EdgeInsets.only(top: 16, left: 17),
                // width: 0,
                height: 200,
                color: Colors.transparent,
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.network('https://genk.mediacdn.vn/2018/9/15/long-nu-1536975903600x0-15370233683411792915808.jpg',
                //     fit: BoxFit.cover
                //   ),
                // ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 17),
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYSFRgSFRYYGRgYEhgRGBgYGBgYEhgYGBgZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHBISHjQlIyw0NDQxNTQ0ND00NzQ0NDQxNTQ0NDQ0NDQxPTc0MTE0NDY0NjE0NDQ0NDE0NDYxNDQ0NP/AABEIALEBHAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EAEEQAAIBAwIDBAgDBQYGAwAAAAECAAMREgQhBTFBIlFhkQYTMnGBocHRQrHwFFJikuEjcoKisvEVJENTwuIHFjP/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAKxEAAgICAgIABQIHAAAAAAAAAAECEQMhEjEEQRMyUWFxIpFCgaGx0eHw/9oADAMBAAIRAxEAPwDzSpSK85C003S8ZNIrA9CN/Gd5nRnWitJYxYwokjaICTCyVoADtFaEtHxjAFjFjDBJIrAQDGOFhSkWMABYx8YXGLGMAWMWMLjFjCgBYxsYbGLGAAcYsYXGLGAAsY2MNjFjEAHGLGFxixgAK0WMLjGxiGDtFaExixgMHaPaECx8Yh0DxixhMY+MQwdorQmMfGAArR8YTGLGIosuOsLptjc8uUBSh0E0JFqdKpBK++C0ulDe1ytz7z3SxCI1to6AlpNCl/oYLV6C7dmwHI90Oj9q80KZBG8KDRkng5xJDXPdbaZrUyDY7EbToi4VrX2lHW0w24G/f3wBpVoyrSQEmUj2gQRbeRtChY+MABYxwsKKcWEBA8YsYTCK0ABYxsYXGK0ABYxBIW0QEAGCSJSEiMBgCkQWFIiCwAhjEUhI94hor4xYQ9vCNiIh0Bxj2hcYsZIwVo4WExixisCGMfGTCx7RNlJA8Y+EnFIci1EBTlumZVRbSwj+E2RkWLyBEkjXhQBLABlCJqLe6QqrBHlvtFYBWq9byBqmCFjHQCAWJt41pPaSCxkgwskok8ZILAQlaTDeEZUhlSAFcpG9XLYpxmpygKhSRKyyyQbLAQArGtDESJEABxSREVpIyNorSYWOFgMhjHxhAse0TGCxixhbRWktlUCxixhSsGxtIlJLsEm+hsY1o3rPfDUtO7+yL/EXmTyxXs0WOT6QMLEVmzwbgNXU1DSVRkFza7KAAOpN5u1vQSsouWRR3s6hfzmUs8V7KUHdHD4y1S0TsLhWty2vadTS4PptNY1XOofpSpErT/xOd7e4S+nFdbb+xxpINhTpogQfzbk+M48nn410zsx+FlkrqvyedIYUGV1aSvPYs8wsKYZWlNWhkaUmAdt5Ep3xrxO20dgQakIJxaLKM1zJsB1hFMEsmDCwoOBJKshTIh0EpMVEkSW0oQdNJcpRtgMtDwkXoT0bQ8KohFUIrXUFnYXJJF7g9JzPpLoUoVSicioe3O173Hyv8ZhjzqcnFIpwaVnJ1Kcrus0K6ym4nRZBXIjYwhEhaIKI2itJWiAgFDBYgsmBHAibHRELHxjynq2LHG+wANu8zHJkUVZpCHJ0W7RWljgeneoTSQXYqWCm2DYi9iDyPjIh6TH2mQ9VK5rfwIIPwI+Mwj5Cfao2lgaVp2QSmTNbQ+i1WsEqKl0bmWdUB3tZWbr5yvwjjB0zM1MBnZcAXUFQDz7Jvc7TR4+KitlWfOqoQBle9NchlgoAAFr726gzLNKUlcVpDhFx17ZT4v6Ovp3CMjU0YqD/ANRlUHnkAMzffb3Svw7hyZtTquwvTcIWupL2BQ4c1Gx587zqPRX01NMilXJZL2BJ3X3GWvSr0RLj9q03bVu2QPaHW/j+c5G5PRSyKL2jlOBat9BqEZ1K37DqwsCjCxO/hY/CdDTTT1q2I1FkzxDBXwAJ2BcgL4XvOX4gNTqVVGDNi17nmSARuTt1k+F8Cr3I9WyMVZGdyopojCzMd7k2J2mcoxlHb2bQ8jg3xdWelHgyaf2aKvts71OyfEgA28jM2tqtRfbUUUHRVV2A+OIvM6n6ZGgSiKHpgKq3b2sVCliLHmRfpzkh6fUvx6Xfwfb8pwTwZb/QlRrHO3uW/wDvueYAyYMiokp9WeUPeTQyAhEhYBA0QN5EQq2t4x2AMpHhFQmTahDkKgSwgEYi0msaYhBYVJCSUx2BaR5dosJmI0OjwA6XR8cq0lwUggcshe3u/rMzV6tqjF3YszG5J5yoK0g7yVGKdpD2+xqzSoxhXeBYzQRAyMkY0AoaOIo4isKEJICIRxJbAerTF1HQi9/H/faGSitrWvy6XkUAOzAkeBxYd9jY/lOo4HwBdUjNTzXHsgMVJ5bbkr+U8fyYzjK3bR34ZQa+hj6fTFbMMV6g3sRaU9TpFLE257m2287Kt6IahbBVDC/S3LpfxmZrfRvUKCfVvcHopPZ63AkwyNfMi5U+mcuaAAIGxItfqJDU6yvgtJyCqWxYDflbe31E2v8AgzggMpUkHmrMp7vYuVPLY2lrTcHJsBkqs2LkoS6MbBSGOzpe+wIO422tE86sXB92calW2950nBPTPUaXso2SD8Dbr8O6LifBGpthVUdoEpUXkwG3PwPMHcTmq1JqbEXsQbbHn4iaRnGejCUGvuer6H0o02ssqrTo1z+Gqp9W56YupFj75zvpdS1V8at0Qm2CbU/ja+XxJnGK9+fO1wfv3z07g2rOq4ZnV7TUnairHdmUKrDc92VvgJEoJbMZRraOL0/DkRBUqs3a9lEte3K7M17A91pImh/2z/O32jaijUqNZEZgLAkDsr4EnYQg4O3UoD3GqgPleTa9s6IyVaOXj3m5x3gfqTdLsBllvuALW2tysb3ub3vsJkppmKs4tipAO4v2r2sL3PLpPTxZo5FcWYTxyg6kCBh9PTLsFFrk23IA+JOwggssUEcdpLnEFmsD2RyuSOm/zmknohd7J1KBRiptcc8SGHK/MG0nRpkkAC5JsANySeQAjJXe98jyINib2I3E6TQaGnSVajlGR1UkuvsXTLbmGNyota4yG19pzZfIWNb2/X3NseFzb9IHwvguZGZK7KcQp9ZZmxGxsLGx3v5kETWbhml7Kl8WuFIzUtcvblbbbw+85ziPH3qAIhZUC2HaObgG13N9/d+fOZYqE7LvYEnusOsxjizT/VKVfZGrnjhpK/uzqdZ6PqUNSg/rLbMlgWBxJNiPa5HoOU5xxY2OxvaG4Zrnp/2hAxWwtmA3b2so52ONjYHbnzE1eLU0rp+0JbO2TgbK65EGooO+zWU+73zSGWeKSjkdp9P/ACRKEZpyjpr0YYkoAORCqbzu5HNRMGSV4G8cNHYw/rIxeCyiLQsCbNIEyBaRLR2BMmNeQvGyhZIS8kDBAxw0VlBwZIGBDSatJbAto4E0eF8T9U6PuQrAkd4B3ExQYamhJmM0pKmVFtPR3XE/Sj/lkqUXUOdS6OGVDUxIcoSpB2sBuPdMIek2qY7VG91lI8rWmt6O+jq1KTmumKlgy1SQjLYdGPNe9ZZTiGh0XZpr61+RYgHf+EHYe/ecLlGKao2imyjw3j2tQgspde5kXDzAFp2+i9XqaL9hVLp2xcFcseeQvaxv5TAqem9rFUutthcfG6qv1gKnpo7KfV01Ubg7b5bfh5d/PwnNLPC+jVYZ+v7lf0udUppTuCxrCon72ATB28AzAW77XnnHE6mTm3gPITW9INU5ObMWZzux52+kj6McEGpr06TEgM3aI5hbEnfobAzTDVcv2JyOnxMvh3D6ld1pU1Z3bYKB06k9w8TsJ6dxSgNFok0KHOpYu+IJuzG7EW6C9hfoBNI16dJamk0S06VRSFxIKu4FrnIjtNz5mco6uzOjuRUB7SsCrWtta/TnHOd6RjxcpJPSMZnewpPkuJZlDArlc3Lb8zDU9JcXsx8bS4dS9IWNivcwDKfeDK6cTLbjS0iL88LfK8yc6OzHidUirwbihUu1VC6sgpm5uFZ2udm9oEZi1x175HX8A5VKBGDLmVd0DKCXxABIJBKsAOZsNt5yp0OoYFrvivM9prctthYHcbQFdKqAM4qAE2yPZF56cPDcJXGSS/Ojlnm5qmjVGke18G/lMu06Hq6bq6P6xwEQC4VBkjFnIP7oZcSPxA9Jl6bh1WpSeuGdlQAsQSWCnYbHmt5WbSuVzya3dkfuZ3Q8WeXUZLuuyHBpXT6s630f0z0y7Zhcr07GwBWxYlm6Ds2sDe/hK+u1Bd2D3KKzsAgsWdkYBxyGOWJI52LHqZzPq8gMQ3cQLkX27yb8+lo7aS63s3fubHnY3BN+ZG/vnJPw448rlKav6fQ0+K3BRitG1S0rhWCgEnsYlCWtYPdSRYG4A23N+68saHS9l3I7YzGLCyWZBiVINywJO3LYe6c+nDtxcPv477/DxvNrhXBKLuVdyo7IBPUsQtuQ3ufKU2o/xL9iFBv0LS6UENmGHYIX++bhLjmRfna9pd4LWNLZ7i7XCnLFigN6bAdGJXmLSGq0lCoqUqaC+Tr6zNRmQQNwSQLXHvvtMxeDHMYqwUjMMHU2G5vyHQfC4JtMFxyppur+xpXB2mX9Xw4I7qHUKozUtcFgbbCwN7cunIza0uh01JUNbtl1HYU7KSLk3U8rEEk2t3Tl6PByXNMviuGQYtYEEjYbe14eEjqtOVYr6xyABazHv3sCd9rnaW8SlFL4nXf1BpxuTianEuHYuopgsjtZL2yy/ca34ht8CD1lDUUWpnFxY2BtseYuOUqq9ZMMam1jUU5+yQRcb8m5HbnbwkqnFKjPZyrsQF3Iv32BJ2HLe3S3fN8eLL0pJpd/UznxS2mr/YIDFcy+rp/1UCG/JHV1O5uu1yOljcCynvvCI6UwlSm6MzAoUyQvdri9mFvZPfsZPxVZLgzKZowtYsWAHidye4CLihCgYXJvuSybAHqATjtbn8JmprOjKLEqSMhfEMdrc+vygsqatEyi1oumpG9ZKeo1VibLYEnE5Ai1+fjyMgdaLWsL27+Zv9o/iIOLNJXkw8yqGtGXasB+vGFqa5b3UbXva97fw36++L4iDizSVpNTKWn1yfiB9ki1+ttiPcd94N9Xe1j8+XlJeVD4s10aWtBWIqJt+IfEcz8pkUNXcfh8yCAOu5sb/SbnB+OU6RJegtS62W7YlT33U/nMMuT9L4mkVtWdVq9PrdacnUikBYKtgo7wADyB6yzQ9GKYZVVld0Kmqu+WLAG4JPceQ6GUNP6ao6g1FKPSdWpmkQQVNg6tk1m2vA+lfG0fDUad0V0sAyVR61+qkUx2kUC4OViOW+1/LlinLTZ0LIl0jVraqnp6poLpqYC3CtWcrmp/ErnskHaE14dyP+QpA88mrLiV5kXB69D32PScNxz0oq6paatt6sGxuhYs1smuqr3DbfruYb0f19d7quppp2gMKjAC3MsMhh5EHY+EWTx5qNxr+aCM25U3/U7s+jlDUphUptRbkvbVgO6xO/5wXo5ww6LUCg9iciVYcmDCwv3H9dIHS6orS9ZXrUEbFiQjhl2ONiQWFyDfbnfbfkbhnpBTq4lHVypyVX9tf7t7MPhtMo5Z41U4tK+10OUeT07Y/GtdlWaitIvUsVVlW7bd57h3zkeLVKqsBVzDryDjtAeF+nunc0NLRr6hq6O61FBqY7E79luwyg2BPQkGamsoUq6BK6h7D2scSD/DuSvnFl8jDD5pd9Fxkk1S/JkcAoaDUUUD+rapiM1dirhrb2Unv6iX39D9CTfHyqOB/qlaj6L6JSP7MsSpZbsSpx5qATuRzsZaNainZWlTAHIG1/LpKn5eLFFc0nf5JqTk+DZ4t/wKoOqfy/0g20VRCQcCDsezzHduOXhNRuJvKOp4ixPOe9HK5dpHNKMYu1YLTl6Yamruiv7SqeyfhaSXSbYh2HvUH6So+qYnnLWm1T3H1MqL4vlFUP4spKrGXg9vxN8FH1lmlwZLWZnsTc9lPtL68Qfa4HnCniJNrgTDJnm3/oqOONAafo9SP4nP+FPtNDS8EpoSQGPvC/aE03EfATTocR8Jyzyz+p0RhEzG0NMG+HLl0IvzmNr6aKxIUg8vaYc+f5mdXU4j/D8pg8T15J5DyH2jxTlYZIxoyqTjuP8AMTLHq0IuUH63k6Gt8F8lmkvERj7C/wAq/abttdHPe9s5zUY39kfKWNAgP4R5CF1upDfhA/wr9pDRoCeZHu2m8JNrZE+zaSgtt1/L7TO19NB+Efr4S6FAHtv5j7TN15HiffKRmzE1JHQSm0u1rd0qsR3SyQREbEd0ISJHaAhgBHAj7R4gHEmDICSBgARWhVc98rgwimS0Ugwc98RaQBivJ4jsneK8hePeHELHlrQaY1C6rcuKRqIB7RKMrMAOpwDm3hKd5OnVKMHVirKQwYGzAjcEEcjM5wuLSKTpno//AMecTDlELMzlHVrkkAH2SSe84jbrNDi3HAmSBTkNt/necXwTiy1KjCqArsocPTGFRqikWsF2zYE8gMrb3nQpq6jKX1dDMqDk6MErBQL3ZWAV9r7r3dZ895PiQ+JUtbtX7s9DxskU+UlevXqjS0FU19KwuckqisCCclAuCy2IPOVf/sNBezqFFSoNi6saZI6Zqu2Xedr90jwrU0cRXovXQG9iVU33IPsty2OxHwmtT0OjqjM10pk8xTKU1J6sUYXVj18+s2wxj8j9EeS1z5433+TyU/Hy/rK1Zz4+UfP9bwNVvGe7E45MHlvzlvTtvz/OUst+Z+Es0X36/nLfRmuzTy93m8Y38PM/WDD/AKxEV/1YCc0kbxZo6Zj+v9po0W9/kZkadyP0JoUap/Q/pMJo3iw9X3/rzmNrjvz/AC+81XZv1aZGvbvv8vvHi7DI9Fek3iZaWptz+czUqC8uqQRyHznS0cwKpV36eYlzRVPA/KUqq+AhdK2/L5f0mkeiZG8H26j4CZmuHv8AlLAc26fGUNYb9RKRLMrUCVGMPWt3yq0uyByY0aNHYErx7yEe8VgEBj5QV494rALeSDQAMkGgMOHiygsospIw2UWUFePlAAuUWUHlFlEMPScKwJFwGBI5XAO4uOU69dQ1R/2c12NNqYYGwzcG/YL8vZ35XIvOJymzw/Vqafqgn9oSQrAAeKsX53HT3CcHmYuSUl6/Gvub4ZU6NfiF9LgtGpgKlTBlYBkF/wAYB3B5X33vMniXDKhck1MjYbmy+Q7pa0zgdmuCahuAzMe2vcL7W716895na7iLU2xRzYAcwGI8Muu1ue848cZLS79uuysivaM4tfnaDe3h8oS1+7yA+sC48B5z2YnPIgCL85Zpt4/nKl4ZL9/+YymSjRDDw8zEXHd5XlYH3ebH6SQJ8PI/UTJo1TL9B/D5D6zQo1D4fL6THot7/h/vL9G3e3xZh+TTGSNYsuOgPUfr4TL1aKD+vtLbr/EPizH/AMpm6l/0LfeEOxzegSkX5N52+ksIi9zfzGUQ9zzt8BDrT/j+Qm7OYlUQdAfmfyhNKzX2yHn9pVen4k+QhtNcfu/E/aXHoTNpFYjct9PylLWKB1MsUsiOS/C8ralD4/C8dgzIrGVyJaqhR3/OV2jsghaNaStFDkBG0VpMCOBFyGQxj2kwsfCHIAdogIXCP6uLkAK0e0LhHwi5DBRQuEWEXIYKKFwiwhyGCh9HXFN7ndT2WHeD9QbEeIkMIsJMqkmmCdOzR1l6jGmXJp2FmIW2XMKW+vnLOko1EUKUDW2BuouPdeUtBqnXsCzDopNveAfoZCnqajXKtYZEY3HZttblOKUJfKq0bppmcX/u/ODZ/d/mkS3u8h9pCekkczdkspNTBx7nvMYiwKtu7yEmmoJ62+AH0lVWIhFq/q5ktDUjSpOf3v8AOR+UtIR1y+DOfrMlNUB0P8zQp1qn8Pmb/SZSizRSRpOR/GPj/wC0p6hh+8fiT9DKrFW6qP1/dkTTT9/y/wBoRjQSlYmYd9/P7ySi/wCH/V95DYeyT5iTWs/f81l2Zjmmf3fkfvLGmPS4Hl9pXFc9fp9pYoi+9z5g/WCYGtTJt/8Ap5H+kr6lP42PxNpJGYDn+f0MBXqE8z/q+phYFGrTHj8/tAGHdR33gysViIRrQlo+MOQA7RCFxixi5DIAxwZPGPhDkgIhpINFhGwisCQaSBEEUMYqYhlgER9pUuYszALLm0VhKfrTG9eYthZdxixlL9oMX7QYUwsuhe6IUKfUb9dzue+UhqDJ/tElwbKUqKIiEUU6zIRjxRQYCiiiiAkvOWKHOKKRIpF4yvquUUUhdlMpiSEUUtkDiFSKKIC1TiMUUBgWjCNFJYhxHiiiGSiiiiAUcRRRDQ8UUUBjRoooxEWgniigIG0iYopSBkDFFFKAYyMUUYH/2Q==',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 50, top: 15),
                        child: const Text(
                          'Pena Valdez',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 00),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: const Text(
                              'Jan 22, 2020',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF777777),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 66, left: 16, right: 15),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ]),
          ],
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                // margin: EdgeInsets.only(top: 16, left: 17),
                // width: 0,
                height: 160,
                color: Colors.transparent,
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.network('https://genk.mediacdn.vn/2018/9/15/long-nu-1536975903600x0-15370233683411792915808.jpg',
                //     fit: BoxFit.cover
                //   ),
                // ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 17),
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 50, top: 15),
                        child: const Text(
                          'Burns Marks',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 00),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: const Text(
                              'Jan 22, 2020',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF777777),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 66, left: 16, right: 15),
                child: const Text(
                  'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ]),
          ],
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                // margin: EdgeInsets.only(top: 16, left: 17),
                // width: 0,
                height: 150,
                color: Colors.transparent,
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.network('https://genk.mediacdn.vn/2018/9/15/long-nu-1536975903600x0-15370233683411792915808.jpg',
                //     fit: BoxFit.cover
                //   ),
                // ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 17),
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 50, top: 15),
                        child: const Text(
                          'Daehyun ',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 00),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: const Text(
                              'Jan 22, 2020',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF777777),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 66, left: 16, right: 15),
                child: const Text(
                  'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum’',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ]),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 150, left: 100, right: 100, bottom: 10),
          width: 135,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
