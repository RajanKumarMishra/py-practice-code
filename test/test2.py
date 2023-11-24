class Animal:
    '''Base class representing an animal'''

    #class variable
    class_variable = 'i am a class variable in Animal class'


    def __int__(self,name):
        '''Constructor to intialize the animal with a name'''

        self.name = name
        #instance variable
        self.instance_variable = 'I am a instance variable in Animal Class'


    def make_sound(self):
        '''Instance method to make a generic animal sound'''
        return 'some animal sound'


class Dog(Animal):
    '''Useing here inhheritance parenr class is Animal'''

    def __init__(self,name,breed):
        '''constructor to initialize the dog with a name and breed'''

        super().__init__(name)
        self.breed = breed


    def make_sound(self):
        '''Overridden instance method to make a dog sound'''
        return 'Woof'

    @classmethod
    def class_method(cls):
        '''class method to access amd modify class variable'''
        return f'{cls.class_variable} thsis ccaess through class variable through class method'

    @staticmethod
    def class_static():
        '''Static method'''




