struct MatchMakers: View {
    var body: some View {
        HStack{
            VStack{
                Circle().strokeBorder(Color.primary, lineWidth: 2) .aspectRatio(1, contentMode: .fit)
                Circle()
            }
            VStack{
                Circle()
                Circle()
            }
        }
    }
}