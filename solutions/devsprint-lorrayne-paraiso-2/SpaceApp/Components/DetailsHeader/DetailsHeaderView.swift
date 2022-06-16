//
//  DetailsHeaderView.swift
//  SpaceApp
//
//  Created by Murillo R. Araújo on 16/06/22.
//

import SwiftUI

struct DetailsHeaderView: View {

    let viewModel: LaunchCellViewModel

    var body: some View {
        VStack(spacing: 8) {
            Image(viewModel.image)
                .resizable()
                .frame(width: 125, height: 125)

            Text(viewModel.name)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.primaryLB)

            Text(viewModel.status)
                .font(.system(size: 20, weight: .regular))
                .foregroundColor(.secondaryLB)

            Text(viewModel.date)
                .font(.system(size: 20, weight: .regular))
                .foregroundColor(.secondaryLB)

        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(.vertical, 16)
        .background(Color.secondaryBG)
    }
}

struct DetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {

        let model = LaunchCellViewModel(
            image: "falcon",
            name: "FalconSat",
            date: "July 03, 2022",
            status: "Success",
            number: nil
        )

        DetailsHeaderView(viewModel: model)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 258))
    }
}
