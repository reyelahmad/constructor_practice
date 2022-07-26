class TravelConst {
  String name;
  String addrs;
  String img;
  TravelConst(this.name, this.addrs, this.img);

  static List<TravelConst> getTraveldata() {
    return [
      TravelConst("Red Place", "Portugal", "https://images.unsplash.com/photo-1551749005-6b94ff060954?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1186&q=80"),
      TravelConst("Water Fall", "Scotland", "https://images.unsplash.com/photo-1609109238958-eb5130c99873?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
      TravelConst("Josh Hild", "USA", "https://images.unsplash.com/photo-1595521624992-48a59aef95e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
      TravelConst("Metropolitan City", "Italy", "https://images.unsplash.com/photo-1453747063559-36695c8771bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
      TravelConst("Bridge", "Norway", "https://images.unsplash.com/photo-1600255940203-05fd89e1d7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
      TravelConst("Arundel Uk", "United Kingdom", "https://images.unsplash.com/photo-1595274459742-4a41d35784ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80"),
      TravelConst("Mashhad", "Iran", "https://images.unsplash.com/photo-1562575029-a1e92321bf00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"),
    ];
  }
}
