import { utils } from "./utils";

export const useBaseCallbacks = () => {
    return {
        hide: () => {
            fetch(`${utils().url()}/ui:hide`)
        }
    }
}