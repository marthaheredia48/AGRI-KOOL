import SwiftUI

struct BIENVENIDA: View {
    @State private var isLoading = false
    @State private var navigateToRegister = false // State to handle navigation

    // Function to simulate sign-in process
    func signInUser() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
            // Set navigation state to true after loading
            navigateToRegister = true
            print("Sign in complete")
        }
    }
    
    var body: some View {
        VStack {
            // Logo image
            HStack {
                Image("LOGO")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .frame(width: 230, height: 230)
                            .foregroundStyle(Color.sun.opacity(0.9))
                            .padding()
                    )
            }.padding()
            
            // Title and subtitle
            VStack {
                Text("Agrikool")
                    .font(.system(size: 81))
                    .bold()
                    .fontDesign(.rounded)
                    .foregroundStyle(.tint)
                
                Text("Sowing the future")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundStyle(.tint)
            }.padding()
            
            // Sign-Up Button
            NavigationLink(destination: RegisterView(), isActive: $navigateToRegister) { // Navigation link
                Button(action: {
                    isLoading = true
                    signInUser()
                }) {
                    if isLoading {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle())
                            .frame(width: 150, height: 80)
                    } else {
                        Text("Sign Up")
                            .font(.system(size: 50))
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                            .frame(width: 250, height: 80)
                            .background(Color.sun)
                            .cornerRadius(10)
                            .bold()
                    }
                }
                .disabled(isLoading) // Disable button while loading
                .padding(.top, 40)
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25.0).frame(width: 400, height: 900)
                .foregroundStyle(.white.opacity(0.8))
        )
        .padding()
    }
}
