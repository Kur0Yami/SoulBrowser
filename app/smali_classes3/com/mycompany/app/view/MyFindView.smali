.class public Lcom/mycompany/app/view/MyFindView;
.super Landroid/widget/LinearLayout;
.source "MyFindView.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/mycompany/app/view/MyFindView$AnonymousClass1;,
    Lcom/mycompany/app/view/MyFindView$AnonymousClass9;
  }
.end annotation

.field public c:Landroid/content/Context;

.field public caseIcon:Lcom/mycompany/app/view/MyIconView;

.field public caseOn:Z

.field public f:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public g:Z

.field public h:Landroid/webkit/WebView;

.field public i:Ljava/lang/String;

.field public j:Lcom/mycompany/app/view/MyIconView;

.field public k:Lcom/mycompany/app/view/MyIconView;

.field public l:Lcom/mycompany/app/view/MyIconView;

.field public m:Lcom/mycompany/app/view/MyIconView;

.field public n:Lcom/mycompany/app/view/MyEditPure;

.field public o:Lcom/mycompany/app/view/MyTextFast;

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/graphics/RectF;

.field public t:Landroid/graphics/Paint;

.field public u:Landroid/graphics/Paint;

.field public v:I

.field public w:Lcom/mycompany/app/view/MyIconView;

.field public x:Z

.field public y:I

.field public z:I

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 112
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 113
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView;->c:Landroid/content/Context;
    const/16 p1, 16
  .line 114
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/MyFindView;->setGravity(I)V
    const/4 p1, 0
  .line 115
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/MyFindView;->setBaselineAligned(Z)V
  .line 116
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/MyFindView;->setOrientation(I)V
    const/16 p1, 1234
  .line 117
    iput p1, p0, Lcom/mycompany/app/view/MyFindView;->p:I
  .line 118
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/mycompany/app/view/MyFindView;->s:Landroid/graphics/RectF;
  .line 119
    new-instance p1, Lcom/mycompany/app/view/MyFindView$AnonymousClass1;
    invoke-direct { p1, p0 }, Lcom/mycompany/app/view/MyFindView$AnonymousClass1;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/view/MyFindView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public final A()V
  .registers 5
  .line 523
    iget v0, p0, Lcom/mycompany/app/view/MyFindView;->p:I
    invoke-static { v0 }, Lcom/mycompany/app/view/MyIconView;->i(I)F
    move-result v0
    const v1, 1055286886
    mul-float v1, v1, v0
  .line 525
    iget-object v2, p0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    if-eqz v2, :L4
  .line 527
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
    if-eqz v3, :L0
  .line 528
    invoke-virtual { v2, v0 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 529
    invoke-virtual { v2, v0 }, Lcom/mycompany/app/view/MyIconView;->setAlpha(F)V
    goto :L1
  :L0
  .line 531
    invoke-virtual { v2, v1 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 532
    invoke-virtual { v2, v1 }, Lcom/mycompany/app/view/MyIconView;->setAlpha(F)V
  :L1
  .line 534
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
    if-eqz v3, :L2
    const-string v3, "Match case on"
    goto :L3
  :L2
    const-string v3, "Match case"
  :L3
    invoke-virtual { v2, v3 }, Lcom/mycompany/app/view/MyIconView;->setContentDescription(Ljava/lang/CharSequence;)V
  :L4
  .line 536
    iget-object v2, p0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    if-eqz v2, :L9
  .line 538
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyFindView;->x:Z
    if-eqz v3, :L5
  .line 539
    invoke-virtual { v2, v0 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 540
    invoke-virtual { v2, v0 }, Lcom/mycompany/app/view/MyIconView;->setAlpha(F)V
    goto :L6
  :L5
  .line 542
    invoke-virtual { v2, v1 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 543
    invoke-virtual { v2, v1 }, Lcom/mycompany/app/view/MyIconView;->setAlpha(F)V
  :L6
  .line 545
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->x:Z
    if-eqz v0, :L7
    const-string v0, "Match whole word on"
    goto :L8
  :L7
    const-string v0, "Match whole word"
  :L8
    invoke-virtual { v2, v0 }, Lcom/mycompany/app/view/MyIconView;->setContentDescription(Ljava/lang/CharSequence;)V
  :L9
    return-void
.end method

.method public final B()V
  .registers 6
  .line 550
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
  .line 551
    iget-object v1, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    if-eqz v0, :L3
    if-nez v1, :L0
    goto :L3
  :L0
    const/4 v2, 0
  .line 555
    invoke-static { v1, v2 }, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;
    move-result-object v1
  .line 556
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L1
  .line 557
    invoke-virtual { v0 }, Landroid/webkit/WebView;->clearMatches()V
  .line 558
    invoke-static { v0 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
  .line 559
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->d()V
    return-void
  :L1
  .line 562
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->usesCustomFind()Z
    move-result v2
    if-eqz v2, :L2
  .line 563
    invoke-virtual { v0 }, Landroid/webkit/WebView;->clearMatches()V
  .line 564
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyFindView;->x:Z
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
    new-instance v4, Lcom/mycompany/app/view/MyFindView$10;
    invoke-direct { v4, p0 }, Lcom/mycompany/app/view/MyFindView$10;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-static { v0, v1, v2, v3, v4 }, Lcom/mycompany/app/view/FindWholeWordHelper;->search(Landroid/webkit/WebView;Ljava/lang/String;ZZLandroid/webkit/ValueCallback;)V
    goto :L3
  :L2
  .line 585
    invoke-static { v0 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
  .line 586
    invoke-virtual { v0, v1 }, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public final C(Z)V
  .registers 4
  .line 591
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    if-eqz v0, :L1
  .line 592
    iget v1, p0, Lcom/mycompany/app/view/MyFindView;->y:I
    if-gtz v1, :L0
    goto :L1
  :L0
  .line 595
    new-instance v1, Lcom/mycompany/app/view/MyFindView$11;
    invoke-direct { v1, p0, p1 }, Lcom/mycompany/app/view/MyFindView$11;-><init>(Lcom/mycompany/app/view/MyFindView;Z)V
    invoke-static { v0, p1, v1 }, Lcom/mycompany/app/view/FindWholeWordHelper;->findNext(Landroid/webkit/WebView;ZLandroid/webkit/ValueCallback;)V
  :L1
    return-void
.end method

.method public final a()V
  .registers 4
  .line 123
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    if-eqz v0, :L1
  .line 125
    iget-object v1, p0, Lcom/mycompany/app/view/MyFindView;->c:Landroid/content/Context;
    invoke-static { v1, v0 }, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V
    const/16 v0, 8
  .line 126
    invoke-virtual { p0, v0 }, Lcom/mycompany/app/view/MyFindView;->setVisibility(I)V
  .line 127
    iget-object v1, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v1, v0 }, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V
  .line 128
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    const/4 v1, 0
    move-object v2, v1
    check-cast v2, Ljava/lang/CharSequence;
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyEditPure;->setText(Ljava/lang/CharSequence;)V
  .line 129
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->d()V
  .line 130
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    if-eqz v0, :L0
  .line 132
    invoke-virtual { v0 }, Landroid/webkit/WebView;->clearMatches()V
  .line 133
    invoke-static { v0 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
  :L0
    const/4 v0, 0
  .line 135
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->x:Z
  .line 136
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
  .line 137
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->A()V
  :L1
    return-void
.end method

.method public final b(IIZ)V
  .registers 19
    move-object v0, p0
  .line 143
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    if-nez v1, :L2
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->c:Landroid/content/Context;
    if-eqz v1, :L2
  .line 144
    new-instance v2, Lcom/mycompany/app/view/MyIconView;
    invoke-direct { v2, v1 }, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V
  .line 145
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
  .line 146
    invoke-virtual { v2, v3 }, Lcom/mycompany/app/view/MyIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 147
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I
    sget v5, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v2, v4, v5 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 148
    new-instance v4, Lcom/mycompany/app/view/MyEditPure;
    invoke-direct { v4, v1 }, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V
    const/4 v5, 1
  .line 149
    invoke-virtual { v4, v5 }, Lcom/mycompany/app/view/MyEditPure;->setSingleLine(Z)V
    const/4 v6, 3
  .line 150
    invoke-virtual { v4, v6 }, Lcom/mycompany/app/view/MyEditPure;->setTextDirection(I)V
    const/high16 v7, 0x41800000
  .line 151
    invoke-virtual { v4, v5, v7 }, Lcom/mycompany/app/view/MyEditPure;->setTextSize(IF)V
  .line 152
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v9, 29
    if-lt v8, v9, :L0
  .line 153
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I
    invoke-virtual { v4, v8 }, Lcom/mycompany/app/view/MyEditPure;->setTextCursorDrawable(I)V
  :L0
  .line 155
    sget v8, Lnet/kaki87/soul2/testing/R$string;->find_word:I
    invoke-virtual { v4, v8 }, Lcom/mycompany/app/view/MyEditPure;->setHint(I)V
    const v8, 268435459
  .line 156
    invoke-virtual { v4, v8 }, Lcom/mycompany/app/view/MyEditPure;->setImeOptions(I)V
  .line 157
    invoke-virtual { v4, v5 }, Lcom/mycompany/app/view/MyEditPure;->setSelectAllOnFocus(Z)V
    const/4 v8, 0
  .line 158
    invoke-virtual { v4, v8 }, Lcom/mycompany/app/view/MyEditPure;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 159
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;
    sget v9, Lcom/mycompany/app/main/MainApp;->Y0:I
    const/4 v10, 0
    invoke-direct { v8, v10, v9 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/high16 v9, 0x3f800000
  .line 160
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F
  .line 161
    invoke-virtual { p0, v4, v8 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 162
    sget v8, Lcom/mycompany/app/main/MainApp;->a1:I
  .line 163
    new-instance v9, Lcom/mycompany/app/view/MyIconView;
    invoke-direct { v9, v1 }, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V
  .line 164
    invoke-virtual { v9, v3 }, Lcom/mycompany/app/view/MyIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    const/16 v11, 8
  .line 165
    invoke-virtual { v9, v11 }, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V
  .line 166
    sget v11, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v9, v8, v11 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 167
    new-instance v11, Lcom/mycompany/app/view/MyIconView;
    invoke-direct { v11, v1 }, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V
  .line 168
    invoke-virtual { v11, v3 }, Lcom/mycompany/app/view/MyIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 169
    sget v12, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v11, v8, v12 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 170
    new-instance v12, Lcom/mycompany/app/view/MyIconView;
    invoke-direct { v12, v1 }, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V
  .line 171
    invoke-virtual { v12, v3 }, Lcom/mycompany/app/view/MyIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 172
    sget v13, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v12, v8, v13 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 173
    new-instance v13, Lcom/mycompany/app/view/MyTextFast;
    invoke-direct { v13, v1 }, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V
  .line 174
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I
  .line 175
    invoke-virtual { v13, v14, v10, v14, v10 }, Lcom/mycompany/app/view/MyTextFast;->setPadding(IIII)V
    const/16 v14, 16
  .line 176
    invoke-virtual { v13, v14 }, Lcom/mycompany/app/view/MyTextFast;->setGravity(I)V
  .line 177
    invoke-virtual { v13, v6 }, Lcom/mycompany/app/view/MyTextFast;->setTextDirection(I)V
  .line 178
    invoke-virtual { v13, v5, v7 }, Lcom/mycompany/app/view/MyTextFast;->setTextSize(IF)V
    const/4 v6, -2
  .line 179
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v13, v6, v7 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 180
    new-instance v6, Lcom/mycompany/app/view/MyIconView;
    invoke-direct { v6, v1 }, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V
  .line 181
    invoke-virtual { v6, v3 }, Lcom/mycompany/app/view/MyIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 182
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v6, v8, v7 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 183
    new-instance v7, Lcom/mycompany/app/view/MyIconView;
    invoke-direct { v7, v1 }, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V
  .line 184
    invoke-virtual { v7, v3 }, Lcom/mycompany/app/view/MyIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 185
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I
    invoke-virtual { p0, v7, v8, v1 }, Lcom/mycompany/app/view/MyFindView;->addView(Landroid/view/View;II)V
  .line 186
    iput-object v2, v0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
  .line 187
    iput-object v9, v0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
  .line 188
    iput-object v11, v0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
  .line 189
    iput-object v12, v0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
  .line 190
    iput-object v6, v0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
  .line 191
    iput-object v7, v0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
  .line 192
    iput-object v4, v0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
  .line 193
    iput-object v13, v0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
  .line 194
    invoke-virtual { v2, v10, v5 }, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V
  .line 195
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v1, v10, v5 }, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V
  .line 196
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v1, v10, v5 }, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V
  .line 197
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v1, v10, v5 }, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V
  .line 198
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v1, v10, v5 }, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V
  .line 199
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v1, v10, v5 }, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V
  .line 200
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->d()V
  .line 201
    invoke-virtual/range { p0 .. p3 }, Lcom/mycompany/app/view/MyFindView;->e(IIZ)V
  .line 202
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$1;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$1;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 211
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$2;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$2;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 228
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$3;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$3;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 237
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$4;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$4;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 246
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$5;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$5;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 260
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$6;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$6;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 274
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$7;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$7;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V
  .line 293
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    invoke-static { v1 }, Lcom/mycompany/app/main/MainUtil;->c5(Landroid/widget/EditText;)V
  .line 294
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$8;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$8;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyEditPure;->addTextChangedListener(Landroid/text/TextWatcher;)V
  .line 322
    iget-object v1, v0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    new-instance v2, Lcom/mycompany/app/view/MyFindView$9;
    invoke-direct { v2, p0 }, Lcom/mycompany/app/view/MyFindView$9;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyEditPure;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
  .line 337
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->getVisibility()I
    move-result v1
    if-eqz v1, :L1
    return-void
  :L1
  .line 340
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->f()V
  :L2
    return-void
.end method

.method public final c()V
  .registers 3
  .line 345
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 347
    invoke-virtual { v0, v1 }, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V
  .line 348
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    invoke-virtual { v0 }, Landroid/webkit/WebView;->clearMatches()V
  .line 349
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
    invoke-static { v0 }, Lcom/mycompany/app/view/FindWholeWordHelper;->clear(Landroid/webkit/WebView;)V
  .line 350
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->h:Landroid/webkit/WebView;
  :L0
  .line 352
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L1
  .line 354
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyIconView;->m()V
  .line 355
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
  :L1
  .line 357
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L2
  .line 359
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyIconView;->m()V
  .line 360
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
  :L2
  .line 362
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L3
  .line 364
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyIconView;->m()V
  .line 365
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
  :L3
  .line 367
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L4
  .line 369
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyIconView;->m()V
  .line 370
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
  :L4
  .line 372
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L5
  .line 374
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyIconView;->m()V
  .line 375
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
  :L5
  .line 377
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    if-eqz v0, :L6
  .line 379
    invoke-virtual { v0 }, Lcom/mycompany/app/view/MyIconView;->m()V
  .line 380
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
  :L6
  .line 382
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->c:Landroid/content/Context;
  .line 383
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->f:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;
  .line 384
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->i:Ljava/lang/String;
  .line 385
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
  .line 386
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
  .line 387
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->s:Landroid/graphics/RectF;
  .line 388
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->t:Landroid/graphics/Paint;
  .line 389
    iput-object v1, p0, Lcom/mycompany/app/view/MyFindView;->u:Landroid/graphics/Paint;
    return-void
.end method

.method public final d()V
  .registers 3
  .line 393
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    if-nez v0, :L0
    return-void
  :L0
  .line 397
    const-string v1, "0 / 0"
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyTextFast;->setText(Ljava/lang/CharSequence;)V
  .line 398
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    const v1, 0x3ecccccd
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyTextFast;->setAlpha(F)V
  .line 399
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyIconView;->setEnabled(Z)V
  .line 400
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyIconView;->setEnabled(Z)V
  .line 401
    iput v1, p0, Lcom/mycompany/app/view/MyFindView;->y:I
  .line 402
    iput v1, p0, Lcom/mycompany/app/view/MyFindView;->z:I
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
  .registers 10
  .line 408
    iget v0, p0, Lcom/mycompany/app/view/MyFindView;->q:I
    if-eqz v0, :L0
  .line 410
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->drawColor(I)V
  :L0
  .line 412
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->s:Landroid/graphics/RectF;
    if-eqz v0, :L1
  .line 413
    iget-object v1, p0, Lcom/mycompany/app/view/MyFindView;->t:Landroid/graphics/Paint;
    if-eqz v1, :L1
  .line 414
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I
    int-to-float v2, v2
  .line 415
    invoke-virtual { p1, v0, v2, v2, v1 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  :L1
  .line 417
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
  .line 418
    iget v0, p0, Lcom/mycompany/app/view/MyFindView;->v:I
    if-eqz v0, :L3
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->u:Landroid/graphics/Paint;
    if-eqz v0, :L3
  .line 419
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->g:Z
    if-eqz v0, :L2
  .line 420
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->getHeight()I
    move-result v0
    int-to-float v0, v0
    const/4 v1, 0
    sub-float v4, v0, v1
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->getWidth()I
    move-result v0
    int-to-float v5, v0
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->getHeight()I
    move-result v0
    int-to-float v0, v0
    sub-float v6, v0, v1
    iget-object v7, p0, Lcom/mycompany/app/view/MyFindView;->u:Landroid/graphics/Paint;
    const/4 v3, 0
    move-object v2, p1
    invoke-virtual/range { v2 .. v7 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    goto :L3
  :L2
  .line 422
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->getWidth()I
    move-result v0
    int-to-float v4, v0
    const/4 v5, 0
    iget-object v6, p0, Lcom/mycompany/app/view/MyFindView;->u:Landroid/graphics/Paint;
    const/4 v2, 0
    const/4 v3, 0
    move-object v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  :L3
    return-void
.end method

.method public final e(IIZ)V
  .registers 9
  .line 430
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    if-eqz v0, :L14
  .line 431
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->g:Z
    const/4 v1, 0
    if-nez v0, :L0
    const/4 p1, 0
  :L0
  .line 434
    invoke-static { p1, p3 }, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I
    move-result p1
  .line 435
    iget v0, p0, Lcom/mycompany/app/view/MyFindView;->p:I
    if-ne v0, p1, :L1
    return-void
  :L1
  .line 438
    iput p1, p0, Lcom/mycompany/app/view/MyFindView;->p:I
  .line 439
    invoke-static { p3 }, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z
    move-result p3
  .line 440
    invoke-static { p1, v1 }, Lcom/mycompany/app/view/MyIconView;->k(IZ)I
    move-result v0
    const/4 v2, 1
    if-eqz p3, :L2
    const/4 p3, 0
    goto :L5
  :L2
    if-nez p1, :L3
    const/4 p3, -1
    goto :L5
  :L3
    if-ne p1, v2, :L4
    const/high16 p3, -0x1000000
    goto :L5
  :L4
    move p3, p1
  :L5
  .line 450
    iget v3, p0, Lcom/mycompany/app/view/MyFindView;->q:I
    if-eq v3, p3, :L6
  .line 451
    iput p3, p0, Lcom/mycompany/app/view/MyFindView;->q:I
    const/4 p3, 1
    goto :L7
  :L6
    const/4 p3, 0
  :L7
  .line 456
    iget-object v3, p0, Lcom/mycompany/app/view/MyFindView;->t:Landroid/graphics/Paint;
    if-nez v3, :L8
  .line 457
    new-instance p3, Landroid/graphics/Paint;
    invoke-direct { p3 }, Landroid/graphics/Paint;-><init>()V
  .line 458
    iput-object p3, p0, Lcom/mycompany/app/view/MyFindView;->t:Landroid/graphics/Paint;
  .line 459
    invoke-virtual { p3, v2 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 460
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->t:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { p3, v3 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    const/4 p3, 1
  :L8
  .line 463
    invoke-static { p1, p2, v1 }, Lcom/mycompany/app/view/MyIconView;->l(IIZ)I
    move-result v3
  .line 464
    iget v4, p0, Lcom/mycompany/app/view/MyFindView;->r:I
    if-eq v4, v3, :L9
  .line 465
    iput v3, p0, Lcom/mycompany/app/view/MyFindView;->r:I
  .line 466
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->t:Landroid/graphics/Paint;
    invoke-virtual { p3, v3 }, Landroid/graphics/Paint;->setColor(I)V
    const/4 p3, 1
  :L9
  .line 469
    iget-object v3, p0, Lcom/mycompany/app/view/MyFindView;->u:Landroid/graphics/Paint;
    if-eqz v3, :L10
    const/4 p3, 0
  .line 470
    iput-object p3, p0, Lcom/mycompany/app/view/MyFindView;->u:Landroid/graphics/Paint;
  .line 471
    iput v1, p0, Lcom/mycompany/app/view/MyFindView;->v:I
    const/4 p3, 1
  :L10
    if-eqz p3, :L11
  .line 475
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->invalidate()V
  :L11
  .line 477
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->o:Lcom/mycompany/app/view/MyTextFast;
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V
  .line 478
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyEditPure;->setTextColor(I)V
  .line 479
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    invoke-static { p1, v2 }, Lcom/mycompany/app/view/MyIconView;->k(IZ)I
    move-result v0
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyEditPure;->setHintTextColor(I)V
    if-nez p1, :L12
  .line 481
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 482
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 483
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_match_case_black_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 484
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_match_word_black_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 485
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_black_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 486
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_down_black_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
    goto :L13
  :L12
  .line 488
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 489
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 490
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_match_case_dark_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 491
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_match_word_dark_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 492
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_dark_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  .line 493
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_down_dark_24:I
    invoke-virtual { p3, v0 }, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V
  :L13
  .line 495
    invoke-static { p1 }, Lcom/mycompany/app/view/MyIconView;->i(I)F
    move-result p3
  .line 496
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v0, p3 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 497
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v0, p3 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 498
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v0, p3 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 499
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { v0, p3 }, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V
  .line 500
    invoke-static { p1, p2 }, Lcom/mycompany/app/main/MainUtil;->P1(II)I
    move-result p1
  .line 501
    iget-object p2, p0, Lcom/mycompany/app/view/MyFindView;->j:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p2, p1 }, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V
  .line 502
    iget-object p2, p0, Lcom/mycompany/app/view/MyFindView;->k:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p2, p1 }, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V
  .line 503
    iget-object p2, p0, Lcom/mycompany/app/view/MyFindView;->caseIcon:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p2, p1 }, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V
  .line 504
    iget-object p2, p0, Lcom/mycompany/app/view/MyFindView;->w:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p2, p1 }, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V
  .line 505
    iget-object p2, p0, Lcom/mycompany/app/view/MyFindView;->l:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p2, p1 }, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V
  .line 506
    iget-object p2, p0, Lcom/mycompany/app/view/MyFindView;->m:Lcom/mycompany/app/view/MyIconView;
    invoke-virtual { p2, p1 }, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V
  .line 507
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->A()V
  :L14
    return-void
.end method

.method public final f()V
  .registers 2
  .line 512
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    if-nez v0, :L0
    return-void
  :L0
  .line 515
    new-instance v0, Lcom/mycompany/app/view/MyFindView$AnonymousClass9;
    invoke-direct { v0, p0 }, Lcom/mycompany/app/view/MyFindView$AnonymousClass9;-><init>(Lcom/mycompany/app/view/MyFindView;)V
    invoke-virtual { p0, v0 }, Lcom/mycompany/app/view/MyFindView;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public getFindText()Ljava/lang/String;
  .registers 3
  .line 621
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->i:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 622
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->i:Ljava/lang/String;
    return-object v0
  :L0
  .line 624
    iget-object v0, p0, Lcom/mycompany/app/view/MyFindView;->n:Lcom/mycompany/app/view/MyEditPure;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
  .registers 8
  .line 629
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V
  .line 630
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->s:Landroid/graphics/RectF;
    if-nez p3, :L0
    return-void
  :L0
  .line 633
    invoke-virtual { p0 }, Lcom/mycompany/app/view/MyFindView;->getPaddingBottom()I
    move-result p3
    sub-int/2addr p2, p3
    int-to-float p2, p2
    const/high16 p3, 0x40000000
    div-float/2addr p2, p3
  .line 634
    sget p4, Lcom/mycompany/app/main/MainApp;->Y0:I
    int-to-float p4, p4
    div-float/2addr p4, p3
    sget p3, Lcom/mycompany/app/main/MainApp;->F1:I
    int-to-float p3, p3
    sub-float/2addr p4, p3
  .line 635
    iget-object p3, p0, Lcom/mycompany/app/view/MyFindView;->s:Landroid/graphics/RectF;
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I
    int-to-float v0, v0
    sub-float v1, p2, p4
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I
    sub-int/2addr p1, v2
    int-to-float p1, p1
    add-float/2addr p2, p4
    invoke-virtual { p3, v0, v1, p1, p2 }, Landroid/graphics/RectF;->set(FFFF)V
    return-void
.end method

.method public final usesCustomFind()Z
  .registers 2
  .line 519
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->x:Z
    if-nez v0, :L1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFindView;->caseOn:Z
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method
