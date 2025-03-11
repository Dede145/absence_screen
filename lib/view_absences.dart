/**
 * Tela de Visualização de Faltas.
 */
library;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Função [main].
void main() {
    runApp(const ViewAbsences());
}

/**
 * Classe [ViewAbsences] inicializa a tela de Visualização de Faltas via [ViewAbsencesPage]. Além
 * disto, define algumas configurações para a tela.
 * 
 * TODO: Adicionar o esquema de cores oficiais no campo [colorScheme].
 */
class ViewAbsences extends StatelessWidget {
    const ViewAbsences({super.key});

    @override
    Widget build(BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => ViewAbsencesStart(),
        child: MaterialApp(
          title: 'Visualização de Faltas',
          theme: ThemeData(
            useMaterial3: true,
            /// Cor temporária.
            colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 107, 95)),
          ),
          home: ViewAbsencesPage(),
        ),
      );
    }
}

/**
 * Placeholder para desenvolvimento futuro.
 */
class ViewAbsencesStart extends ChangeNotifier {
    //@Override
    //State<ViewAbsencesStart> createState() => _ViewAbsencesState();
    var temp = "Hello World!";
}

/**
 * Classe [Header] determina a aparência geral e posicionamento do título, data, botão de dúvidas
 * e contador de estados das matérias (Sem risco de O, O, e risco de O). O estilo das fontes é
 * definido em [headerStyle] e em [textStyle].
 * 
 * TODO: Aplicar a fonte do UFABCConecta em [headerStyle] e em [textStyle]. Ajustar tamanho e os 
 * Wigets.
 * TODO: Adicionar data atual no segundo [Text] dentro do segundo [Row].
 * TODO: Contar número de "Estados" das disciplinas no terceiro [Row].
 */
class Header extends StatelessWidget {
    const Header({super.key});

    @override
    Widget build(BuildContext context) {
      final theme = Theme.of(context);
      final headerStyle = theme.textTheme.displaySmall!.copyWith(
        fontSize: 18,
        color: theme.colorScheme.onPrimary,
      );
      final textStyle = theme.textTheme.displaySmall!.copyWith(
        fontSize: 16,
        color: theme.colorScheme.onSecondary,
      );

      return Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryFixedVariant,
        body: Column(
          children: [
            /**
             * Título.
             */
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 30),
                  child: Text(
                    "Visualização de Faltas",
                    style: headerStyle,
                  ),
                ),
              ],
            ),

            /**
             * Data.
             */
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  //TODO: Inserir data real aqui.
                  child: Text(
                    "31 de Março de 2025",
                    style: textStyle,
                  ),
                ),
              ],
            ),

            /**
             * Contador de estados.
             */
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                          bottom: Radius.circular(10),
                        ),
                      ),
                    //TODO: Inserir estados das matérias aqui.
                    child: Text(
                      "0 Checks, 1: X, 1: !",
                      selectionColor: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ); 
    } 
}

/**
 * Classe [ViewAbsencesPage] determina a aparência geral da página.
 */
class ViewAbsencesPage extends StatelessWidget {
    const ViewAbsencesPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromRGBO(170, 170, 170, 1),
        body: Column(
          children: [
            /**
             * Header.
             */
            SizedBox(
              height: 140,
              width: 1000,
              child: Header(),
            ),
          ],
        ),
      );
    }
}