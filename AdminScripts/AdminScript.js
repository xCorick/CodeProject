function ValidateInputFile(sender, args) {
    var inputFile = document.getElementById('<%= InputFile.ClientID %>');
    args.IsValid = inputFile.value !== '';
}