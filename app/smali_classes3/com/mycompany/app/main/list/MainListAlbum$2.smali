.class Lcom/mycompany/app/main/list/MainListAlbum$2;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/mycompany/app/setting/CastActivity;->C0(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 4
    .line 5
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    move p1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    if-nez p1, :cond_4

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_4
    :goto_1
    move p1, v2

    .line 40
    :goto_2
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_5
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 49
    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_6
    :goto_3
    return-void
.end method

.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, p2}, Lcom/mycompany/app/main/MainUri;->r(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 34
    .line 35
    iget-object v2, p2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v2, p1, v1}, Lcom/mycompany/app/main/MainListAdapter;->B(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 51
    .line 52
    new-instance p2, Landroid/content/Intent;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 55
    .line 56
    const-class v2, Lcom/mycompany/app/image/ImageViewActivity;

    .line 57
    .line 58
    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "EXTRA_TYPE"

    .line 62
    .line 63
    iget v2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 64
    .line 65
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string v1, "EXTRA_BOOK"

    .line 69
    .line 70
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const-string p3, "EXTRA_INDEX"

    .line 74
    .line 75
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x7

    .line 79
    invoke-virtual {v0, p2, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->R1:Ljava/util/List;

    .line 4
    .line 5
    iget p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x3

    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 38
    .line 39
    return-void
.end method

.method public final o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget v2, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->t:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    iput-boolean v4, v0, Lcom/mycompany/app/main/list/MainListAlbum;->S1:Z

    .line 16
    .line 17
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    sget v5, Lnet/kaki87/soul2/testing/R$string;->file_added:I

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget p1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->t:I

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-array v5, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, v5, v4

    .line 36
    .line 37
    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->S1:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-boolean p1, v1, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iput-boolean v4, v0, Lcom/mycompany/app/main/list/MainListAlbum;->S1:Z

    .line 54
    .line 55
    sget p1, Lnet/kaki87/soul2/testing/R$string;->no_added:I

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 61
    .line 62
    if-eqz p1, :cond_9

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 80
    .line 81
    if-nez p1, :cond_6

    .line 82
    .line 83
    move p1, v4

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    :goto_1
    if-nez p1, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    :goto_2
    move v3, v4

    .line 93
    :goto_3
    if-eqz v3, :cond_8

    .line 94
    .line 95
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 96
    .line 97
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_8
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :cond_9
    :goto_4
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListAlbum$2;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/main/list/MainListAlbum;->R1:Ljava/util/List;

    .line 5
    .line 6
    iget v0, v1, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, v1, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v2, 0x3

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-boolean v0, v1, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, v1, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 39
    .line 40
    return-void
.end method
