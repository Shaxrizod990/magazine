import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:magazine/data/models/journal/journal.dart';
import 'package:magazine/utils/assets.dart';

class ItemJournal extends StatefulWidget {
  const ItemJournal({super.key, required this.journal});

  final Journal journal;

  @override
  State<ItemJournal> createState() => _ItemJournalState();
}

class _ItemJournalState extends State<ItemJournal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
      child: Material(
        elevation: 4, // Set the elevation value as needed
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 130,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: widget.journal.imageHashId != null
                        ? Image.network(
                            "http://storage.academy.uz/source/1/journals/1/lKErp7sOaELGOkzUGNkdk_IhUwbC_DuH.jpg",
                            width: 64.0,
                            height: 64.0,
                            fit: BoxFit.cover,
                          )
                        : SvgPicture.asset(
                            AppImages.icExample,
                            // Change this to your default icon asset
                            width: 64.0,
                            height: 64.0,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                  child: Container(
                    width: double.infinity,
                    height: 32,
                    child: Text(
                      widget.journal.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
                  child: Text(
                    "${widget.journal.year} - yil ${widget.journal.number} son",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 8,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
