import 'package:flutter/material.dart';
import 'package:matn_uzz/viewvs/view_of_collaborator.dart';

import '../models/collaborators_model.dart';
Widget uiOfCollaborator(List<Collaborators> items, bool isLoading){
  return Stack(
    children: [
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index){
          return viewOfCollaborator(context: ctx, collaborators: items[index]);
        },
      ),
      isLoading ?
      const Center(
        child: CircularProgressIndicator(),
      ) : const SizedBox.shrink(),
    ],
  );
}