.class public Lcom/mycompany/app/dialog/DialogWebBookList;
.super Lcom/mycompany/app/view/MyDialogNormal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;,
        Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;
    }
.end annotation


# static fields
.field public static V:I


# instance fields
.field public A:Lcom/mycompany/app/view/MyMainRelative;

.field public B:Lcom/mycompany/app/main/MainListView2;

.field public C:Lcom/mycompany/app/view/MyButtonText;

.field public D:Lcom/mycompany/app/view/MyLineText;

.field public E:Landroidx/appcompat/widget/AppCompatTextView;

.field public final F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public final H:I

.field public final I:Z

.field public J:Ljava/util/ArrayList;

.field public K:Lcom/mycompany/app/view/MyPopupMenu;

.field public L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

.field public M:Lcom/mycompany/app/dialog/DialogWebBookDir;

.field public N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

.field public O:Lcom/mycompany/app/dialog/DialogWebBookSave;

.field public P:Z

.field public Q:I

.field public R:Lcom/mycompany/app/view/MyFadeFrame;

.field public final S:I

.field public final T:I

.field public U:Lcom/mycompany/app/main/MainListView$ListViewHolder;

.field public w:Lcom/mycompany/app/main/MainActivity;

.field public x:Landroid/content/Context;

.field public y:Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;

.field public z:Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/util/List;ILcom/mycompany/app/dialog/DialogWebBookList$BookListListener;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullBlack:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullTheme:I

    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 25
    .line 26
    iput p4, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->H:I

    .line 27
    .line 28
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->y:Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->Q:I

    .line 32
    .line 33
    sput p1, Lcom/mycompany/app/dialog/DialogWebBookList;->V:I

    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    if-nez p4, :cond_1

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 39
    .line 40
    sget p5, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 41
    .line 42
    move v0, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p5, 0x1

    .line 45
    if-ne p4, p2, :cond_2

    .line 46
    .line 47
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 48
    .line 49
    sget p5, Lnet/kaki87/soul2/testing/R$string;->move_to:I

    .line 50
    .line 51
    sget v0, Lnet/kaki87/soul2/testing/R$string;->move:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v0, 0x6

    .line 55
    if-ne p4, v0, :cond_8

    .line 56
    .line 57
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 58
    .line 59
    sget p5, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 60
    .line 61
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 62
    .line 63
    :goto_1
    if-eqz p3, :cond_6

    .line 64
    .line 65
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    if-ne p4, p2, :cond_5

    .line 72
    .line 73
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->F:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    const-string p4, "/"

    .line 88
    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->F:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    :goto_2
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->F:Ljava/lang/String;

    .line 106
    .line 107
    :cond_5
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_6

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 129
    .line 130
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 131
    .line 132
    iget-wide v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 133
    .line 134
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    iput p5, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->S:I

    .line 143
    .line 144
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->T:I

    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 147
    .line 148
    if-nez p1, :cond_7

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebBookList$1;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    :cond_8
    :goto_5
    return-void
.end method

.method public static o(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonText;->setClickable(Z)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebBookList$25;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$25;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "html"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string p1, "*/*"

    .line 38
    .line 39
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "android.intent.category.OPENABLE"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const/16 p1, 0x41

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 60
    .line 61
    const/16 p1, 0x9

    .line 62
    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->t0(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    :goto_0
    return-void
.end method

.method public static p(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 23
    .line 24
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->s:Z

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->s:Z

    .line 30
    .line 31
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    const-string v1, "mGuideSort"

    .line 36
    .line 37
    invoke-static {v0, p0, v1, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->s:Z

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookList$12;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$12;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method public static q(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->u()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->t()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebBookList$20;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$20;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 35
    .line 36
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->f0:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookDir$1;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookDir$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->M:Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookList$21;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$21;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static r(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->dismiss()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->z:Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_3
    if-eqz p1, :cond_a

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 44
    .line 45
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/mycompany/app/db/book/DbBookWeb;->d(Landroid/content/Context;Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    cmp-long v0, v2, v4

    .line 60
    .line 61
    if-lez v0, :cond_9

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 64
    .line 65
    sget v4, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 66
    .line 67
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 71
    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 75
    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    if-gtz v0, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    const-string v0, "_dir"

    .line 82
    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v5, "DbBookWeb_table"

    .line 96
    .line 97
    invoke-static {p1, v5, v4, v2, v3}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 98
    .line 99
    .line 100
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-object p1, v1

    .line 119
    :catch_1
    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_8

    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v0, v1, p0, p1}, Lcom/mycompany/app/main/MainListView2;->K(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    :goto_2
    return-void

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->z:Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;->getTitle()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    move-object v5, p1

    .line 164
    move-object v6, v1

    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move-object v5, v1

    .line 167
    move-object v6, v5

    .line 168
    :goto_3
    new-instance v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 174
    .line 175
    iput-object p1, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 180
    .line 181
    new-instance v7, Lcom/mycompany/app/dialog/DialogWebBookList$17;

    .line 182
    .line 183
    invoke-direct {v7, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$17;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 184
    .line 185
    .line 186
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/dialog/DialogWebBookEdit;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;)V

    .line 187
    .line 188
    .line 189
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 190
    .line 191
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebBookList$18;

    .line 192
    .line 193
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$18;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->dismiss()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->t()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->dismiss()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 41
    .line 42
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookSave;->dismiss()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 50
    .line 51
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    iget v3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->H:I

    .line 56
    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView2;->s()V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainListView2;->o(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView2;->n()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 74
    .line 75
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 83
    .line 84
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    if-eqz v1, :cond_8

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 94
    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 101
    .line 102
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 103
    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 110
    .line 111
    :cond_a
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 112
    .line 113
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->y:Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;

    .line 114
    .line 115
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->z:Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;

    .line 116
    .line 117
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 118
    .line 119
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogNormal;->dismiss()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :goto_0
    return v1

    .line 12
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView2;->w0:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_7

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView2;->x0:Z

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    if-eqz p1, :cond_5

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq v2, v3, :cond_4

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-ne v2, v3, :cond_6

    .line 37
    .line 38
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_6
    :goto_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return p1

    .line 52
    :catch_0
    return v1

    .line 53
    :cond_7
    :goto_2
    return v3
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->t()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_5

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "/"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainListView2;->L(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->dismiss()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->P:Z

    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->P:Z

    .line 19
    .line 20
    iget p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->Q:I

    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/dialog/DialogWebBookList;->V:I

    .line 23
    .line 24
    if-eq p1, v2, :cond_4

    .line 25
    .line 26
    iput v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->Q:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->t0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v4, p1, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 53
    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainListView2;->G(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 61
    .line 62
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->P:Z

    .line 67
    .line 68
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iput-object v0, p1, Lcom/mycompany/app/main/MainListView2;->t0:Ljava/lang/String;

    .line 73
    .line 74
    :cond_5
    :goto_1
    return-void
.end method

.method public final s(IILandroid/content/Intent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/16 v3, 0x13

    .line 8
    .line 9
    if-ne p1, v3, :cond_5

    .line 10
    .line 11
    if-ne p2, v1, :cond_f

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 24
    .line 25
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 42
    .line 43
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebBookSave$9;

    .line 68
    .line 69
    invoke-direct {p2, v0}, Lcom/mycompany/app/dialog/DialogWebBookSave$9;-><init>(Lcom/mycompany/app/dialog/DialogWebBookSave;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :cond_5
    const/16 v0, 0x9

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-ne p1, v0, :cond_10

    .line 85
    .line 86
    if-ne p2, v1, :cond_f

    .line 87
    .line 88
    if-nez p3, :cond_6

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 99
    .line 100
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_8

    .line 115
    .line 116
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 117
    .line 118
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 119
    .line 120
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    return v2

    .line 124
    :cond_8
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_9
    const-string v0, "html"

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    :goto_1
    if-nez v3, :cond_a

    .line 148
    .line 149
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 150
    .line 151
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 152
    .line 153
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 154
    .line 155
    .line 156
    return v2

    .line 157
    :cond_a
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 163
    .line 164
    if-nez p1, :cond_b

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_b
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookList;->u()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_c

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_c
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 175
    .line 176
    if-eqz p1, :cond_d

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->dismiss()V

    .line 179
    .line 180
    .line 181
    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 183
    .line 184
    :cond_d
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 185
    .line 186
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 187
    .line 188
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookList$22;

    .line 189
    .line 190
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$22;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, p3}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 201
    .line 202
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 203
    .line 204
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->c0:Ljava/lang/String;

    .line 205
    .line 206
    iget-object p2, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 207
    .line 208
    if-nez p2, :cond_e

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_e
    new-instance p3, Lcom/mycompany/app/dialog/DialogWebBookLoad$1;

    .line 212
    .line 213
    invoke-direct {p3, p1}, Lcom/mycompany/app/dialog/DialogWebBookLoad$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    :goto_2
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 220
    .line 221
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebBookList$23;

    .line 222
    .line 223
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$23;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 227
    .line 228
    .line 229
    :cond_f
    :goto_3
    return v2

    .line 230
    :cond_10
    return v3
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->M:Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookDir;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->M:Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->L:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->M:Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->N:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final v(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView2;->z(Landroid/content/res/Configuration;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 13
    .line 14
    const v0, -0x70708

    .line 15
    .line 16
    .line 17
    const/high16 v1, -0x1000000

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    move v3, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, v0

    .line 32
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    const v2, -0x50506

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->H:I

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    if-ne p1, v3, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 93
    .line 94
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    move v3, v2

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    const v3, -0xe19938

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 107
    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 111
    .line 112
    if-eqz v3, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 118
    .line 119
    const v0, -0xd8d8d9

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 130
    .line 131
    const/high16 v1, 0x21000000

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 134
    .line 135
    .line 136
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->f()V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/main/MainListView2;->p(ZZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->H:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :goto_0
    return-void

    .line 12
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "/"

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->F:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_6

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    const v0, -0x50506

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    const v0, -0xe19938

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    const v0, -0x7f7f80

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    const v0, -0x252526

    .line 86
    .line 87
    .line 88
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
