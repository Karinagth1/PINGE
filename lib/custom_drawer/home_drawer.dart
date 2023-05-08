import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer(
      {Key? key,
      this.screenIndex,
      this.iconAnimationController,
      this.callBackIndex})
      : super(key: key);

  final AnimationController? iconAnimationController;
  final DrawerIndex? screenIndex;
  final Function(DrawerIndex)? callBackIndex;

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  List<DrawerList>? drawerList;
  @override
  void initState() {
    setDrawerListArray();
    super.initState();
  }

  void setDrawerListArray() {
    drawerList = <DrawerList>[
      /*   DrawerList(
        index: DrawerIndex.HOME,
        labelName: 'Home',
        icon: Icon(Icons.home),
      ), */
      /* DrawerList(
        index: DrawerIndex.Help,
        labelName: 'Información',
        isAssetsImage: true,
        imageName: 'assets/images/supportIcon.png',
      ), */
      DrawerList(
        index: DrawerIndex.HOME,
        labelName: 'Cartera',
        isAssetsImage: true,
        imageName: 'assets/images/cartera.png',
      ),
      DrawerList(
        index: DrawerIndex.HOME,
        labelName: 'Detalle Cartera',
        isAssetsImage: true,
        imageName: 'assets/images/detalle_cartera.png',
      ),
      DrawerList(
        index: DrawerIndex.Invite,
        labelName: 'Remisiones',
        /* icon: Icon(
          Icons.pending_actions_sharp,
          color: Colors.green,
        ), */
        isAssetsImage: true,
        imageName: 'assets/images/remisiones.png',
      ),
      DrawerList(
        index: DrawerIndex.Invite,
        labelName: 'Facturas',
        isAssetsImage: true,
        imageName: 'assets/images/facturas.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Pagos Online',
        isAssetsImage: true,
        imageName: 'assets/images/pagos_online.png',
      ),
      DrawerList(
        index: DrawerIndex.Share,
        labelName: 'Despachos',
        icon: Icon(Icons.fire_truck),
      ),
      DrawerList(
        index: DrawerIndex.Invite,
        labelName: 'Solicitud Crédito',
        isAssetsImage: true,
        imageName: 'assets/images/solicitud_credito.png',
      ),
      DrawerList(
        index: DrawerIndex.Invite,
        labelName: 'Aprobación de cupo',
        isAssetsImage: true,
        imageName: 'assets/images/aprobacion_cupo.png',
      ),
      DrawerList(
        index: DrawerIndex.InputsScreenPqrs,
        labelName: 'Pqrs',
        isAssetsImage: true,
        imageName: 'assets/images/pqrs.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Notas credito',
        isAssetsImage: true,
        imageName: 'assets/images/notas_credito.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Notas debito',
        isAssetsImage: true,
        imageName: 'assets/images/notas_debito.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Puntos Ingetierras',
        isAssetsImage: true,
        imageName: 'assets/images/puntos_Inget.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Carro de compras',
        isAssetsImage: true,
        imageName: 'assets/images/carro_Compras.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Productos comprados',
        isAssetsImage: true,
        imageName: 'assets/images/product_comprados.png',
      ),
      DrawerList(
        index: DrawerIndex.FeedBack,
        labelName: 'Recibos de caja',
        isAssetsImage: true,
        imageName: 'assets/images/recibos_caja.png',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness; ////////////
    bool isLightMode = brightness == Brightness.light; /////////////////
    return Scaffold(
      backgroundColor: AppTheme.notWhite.withOpacity(0.5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AnimatedBuilder(
                    animation: widget.iconAnimationController!,
                    builder: (BuildContext context, Widget? child) {
                      return ScaleTransition(
                        scale: AlwaysStoppedAnimation<double>(1.0 -
                            (widget.iconAnimationController!.value) * 0.2),
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation<double>(Tween<double>(
                                      begin: 0.0, end: 24.0)
                                  .animate(CurvedAnimation(
                                      parent: widget.iconAnimationController!,
                                      curve: Curves.fastOutSlowIn))
                                  .value /
                              360),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: AppTheme.grey.withOpacity(0.6),
                                    offset: const Offset(2.0, 4.0),
                                    blurRadius: 8),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(60.0)),
                              child: Image.asset('assets/images/userImage.png'),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4),
                    child: Text(
                      'Bienvenido',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: isLightMode ? AppTheme.grey : AppTheme.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Divider(
            height: 1,
            color: AppTheme.grey.withOpacity(0.6),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: drawerList?.length,
              itemBuilder: (BuildContext context, int index) {
                return inkwell(drawerList![index]);
              },
            ),
          ),
          Divider(
            height: 1,
            color: AppTheme.grey.withOpacity(0.6),
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Salir',
                  style: TextStyle(
                    fontFamily: AppTheme.fontName,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppTheme.darkText,
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: Icon(
                  Icons.power_settings_new,
                  color: Colors.red,
                  size: 32,
                ),
                onTap: () {
                  onTapped();
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ],
      ),
    );
  }

  void onTapped() {
    print('Doing Something...'); // Print to console.
  }

  Widget inkwell(DrawerList listData) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.1),
        highlightColor: Colors.transparent,
        onTap: () {
          navigationtoScreen(listData.index!);
        },
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 6.0,
                    height: 46.0,
                    // decoration: BoxDecoration(
                    //   color: widget.screenIndex == listData.index
                    //       ? Colors.blue
                    //       : Colors.transparent,
                    //   borderRadius: new BorderRadius.only(
                    //     topLeft: Radius.circular(0),
                    //     topRight: Radius.circular(16),
                    //     bottomLeft: Radius.circular(0),
                    //     bottomRight: Radius.circular(16),
                    //   ),
                    // ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                  ),
                  listData.isAssetsImage
                      ? Container(
                          width: 24,
                          height: 24,
                          child: Image.asset(listData.imageName,
                              color: widget.screenIndex == listData.index
                                  ? Colors.white
                                  : AppTheme.nearlyBlack),
                        )
                      : Icon(listData.icon?.icon,
                          color: widget.screenIndex == listData.index
                              ? Colors.white
                              : AppTheme.nearlyBlack),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                  ),
                  Text(
                    listData.labelName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: widget.screenIndex == listData.index
                          ? Colors.black
                          : AppTheme.nearlyBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            widget.screenIndex == listData.index
                ? AnimatedBuilder(
                    animation: widget.iconAnimationController!,
                    builder: (BuildContext context, Widget? child) {
                      return Transform(
                        transform: Matrix4.translationValues(
                            (MediaQuery.of(context).size.width * 0.75 - 64) *
                                (1.0 -
                                    widget.iconAnimationController!.value -
                                    1.0),
                            0.0,
                            0.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 0.75 - 64,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: new BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(28),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(28),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Future<void> navigationtoScreen(DrawerIndex indexScreen) async {
    widget.callBackIndex!(indexScreen);
  }
}

enum DrawerIndex {
  HOME,
  FeedBack,
  Help,
  Share,
  InputsScreenPqrs,
  Invite,
  Testing,
}

class DrawerList {
  DrawerList({
    this.isAssetsImage = false,
    this.labelName = '',
    this.icon,
    this.index,
    this.imageName = '',
  });

  String labelName;
  Icon? icon;
  bool isAssetsImage;
  String imageName;
  DrawerIndex? index;
}
