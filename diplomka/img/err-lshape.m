A=[
5, 1.164088e+01, 1.088101e+02
33, 4.968942e+00, 1.112109e+02
61, 3.237784e+00, 1.117047e+02
89, 2.220579e+00, 1.119314e+02
117, 1.653017e+00, 1.120330e+02
157, 1.232314e+00, 1.120775e+02
213, 8.426079e-01, 1.120974e+02
286, 5.381022e-01, 1.121113e+02
357, 3.671620e-01, 1.121164e+02
442, 2.513639e-01, 1.121188e+02
567, 1.628003e-01, 1.121201e+02
688, 1.098850e-01, 1.121206e+02
826, 7.212674e-02, 1.121209e+02
976, 4.854522e-02, 1.121210e+02
];
demkdof = [ 8 21.5140112250461 40.0627499477497 107.305988738806 170.705415133487 233.704283779099 357.26698106142 418.986901944608 484.823858820543 548.684945357634 721.234790956584 837.340742759004 959.109191319632 ];
demkerr = [ 22.4511946335085 10.1833861381409 6.34557211994608 4.08999065826741 2.56587491202579 1.6538153254111 0.755221527346924 0.576355826730275 0.483494235710035 0.439852449880369 0.155374546786437 0.107872791280389 0.07 ];
semilogy(A(:,1), A(:,2), 'k-', demkdof, demkerr, 'k--', [839], [0.1603], 'kx');
grid on;
legend('Our algorithm', 'L. Demkowicz''s algorithm', 'Hand-made mesh');
xlabel('Degrees of freedom');
ylabel('Error [%]');
