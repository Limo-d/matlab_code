function [J, det_J, inv_J] = getJacobian(nodes, x_i, eta)
J = nodes'*linquadderiref(x_i, eta);
det_J = det(J);
inv_J = inv(J);
end