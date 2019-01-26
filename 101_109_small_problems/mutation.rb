Concetantion is mutating

#<< is a mutating method
when we use it, we are actually copying the reference to the object_id into
the new collection

so in this case, array2 contains reference to the same object_id's as array1
so when we mutate array1, we are doing the same in effect to array2 
