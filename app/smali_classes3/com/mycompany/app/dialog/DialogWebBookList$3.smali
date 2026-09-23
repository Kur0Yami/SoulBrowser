.class Lcom/mycompany/app/dialog/DialogWebBookList$3;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p3, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 9
    .line 10
    if-eqz p3, :cond_5

    .line 11
    .line 12
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Lcom/mycompany/app/main/MainListAdapter2;->C(I)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-boolean p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 31
    .line 32
    if-eqz p3, :cond_3

    .line 33
    .line 34
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 42
    .line 43
    const/4 p3, 0x1

    .line 44
    iput-boolean p3, p2, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 45
    .line 46
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/main/MainListView2;->L(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iget-boolean p3, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 55
    .line 56
    if-eqz p3, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->y:Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 64
    .line 65
    const/4 p3, 0x2

    .line 66
    invoke-interface {p1, p3, p2}, Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;->b(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookList;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookList;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookSave;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 24
    .line 25
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView2;->l()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookSave;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookSave$1;

    .line 52
    .line 53
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogWebBookSave$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookSave;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->O:Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 60
    .line 61
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$24;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$24;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 71
    .line 72
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_bookmark:I

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "/"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/main/MainListView2;->L(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogWebBookList;->q(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-eqz v1, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 25
    .line 26
    :cond_2
    if-nez p1, :cond_3

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_folder:I

    .line 38
    .line 39
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    sget v3, Lnet/kaki87/soul2/testing/R$string;->direct_input:I

    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$string;->add_page:I

    .line 60
    .line 61
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 68
    .line 69
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 70
    .line 71
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 72
    .line 73
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 74
    .line 75
    new-instance v9, Lcom/mycompany/app/dialog/DialogWebBookList$11;

    .line 76
    .line 77
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$11;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 78
    .line 79
    .line 80
    move-object v6, p1

    .line 81
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 82
    .line 83
    .line 84
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->K:Lcom/mycompany/app/view/MyPopupMenu;

    .line 85
    .line 86
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 87
    .line 88
    return-void
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->o(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView2;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v0, v3}, Lcom/mycompany/app/dialog/DialogWebBookList;->p(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v2, 0x1

    .line 47
    invoke-static {v0, v2}, Lcom/mycompany/app/dialog/DialogWebBookList;->p(Lcom/mycompany/app/dialog/DialogWebBookList;Z)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->q:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sput p1, Lcom/mycompany/app/dialog/DialogWebBookList;->V:I

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    iput p1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->Q:I

    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public final p(ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->y:Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;->b(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$3;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->J:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/main/MainListView2;->L(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method
