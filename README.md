# Diseño de ALU con operaciones aritméticas y lógicas

Diseño de una una ALU que realiza dos operaciones aritméticas (suma, resta, comparador) y cuatro operaciones lógicas (AND, OR, XOR, NOT) entre dos cantidades binarias de 2 bits cada una (A1,A0; B1,B0). Para ello se debe revisar teoría acerca de multiplexores y demultiplexores para entender su funcionamiento.

Se proporcionan archivos fuente y de configuración: .bin (para ejecutar en tarjeta Mojo mediante programa llamado Mojo Loader), .vhd (código VHDL), .ucf (para definir pines), .xise (proyecto).

Nota: Revisar funcionamiento de los archivos proporcionados al momento de crear proyecto en Xilinx ISE Design, ajustar nombre de archivos y proyecto de acuerdo a necesidades.

# Multiplexor
Un multiplexor o también conocido como MUX o MPX es un dispositivo que sirve para transmitir datos de diferentes entradas a una sola salida, es decir, todos los datos que entran al circuito salen por el mismo lugar, dependiendo del tipo que se utilice, pueden manejar señales analógicas o digitales.

# Demultiplexor
Un demultiplexor se define como un circuito que puede distribuir o entregar múltiples salidas desde una sola entrada. Un demultiplexor puede funcionar como una sola entrada con muchos interruptores de salida.

# ALU
Una unidad aritmético-lógica es la parte de una unidad central de procesamiento que realiza operaciones aritméticas y lógicas sobre los operandos en palabras de instrucción de computadora.
