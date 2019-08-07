kubectl describe sa secured-user -n secured

kubectl -n secured describe secret $(kubectl -n secured get secret | grep secured-user | awk '{print $1}')

kubectl get secret secured-user-token-hwl84 -n secured -o "jsonpath={.data['ca\.crt']}"
