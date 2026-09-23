.class Lcom/mycompany/app/main/list/MainListCast$2;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListCast;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListCast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListCast$2;->a:Lcom/mycompany/app/main/list/MainListCast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(ILjava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast$2;->a:Lcom/mycompany/app/main/list/MainListCast;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget v1, Lcom/mycompany/app/main/list/MainListCast;->N1:I

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 26
    .line 27
    invoke-direct {v1, v0, p2, p1}, Lcom/mycompany/app/main/list/MainListCast$CastTask;-><init>(Lcom/mycompany/app/main/list/MainListCast;Ljava/util/List;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 31
    .line 32
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/setting/CastActivity;->w0()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListCast;->J1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListCast;->F0()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string p2, "[ "

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget p2, Lnet/kaki87/soul2/testing/R$string;->tv_cast:I

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, " ]\n"

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget p2, Lnet/kaki87/soul2/testing/R$string;->active_function:I

    .line 76
    .line 77
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget v1, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 91
    .line 92
    new-instance v2, Lcom/mycompany/app/main/list/MainListCast$5;

    .line 93
    .line 94
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListCast$5;-><init>(Lcom/mycompany/app/main/list/MainListCast;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, v0, p1, v1, v2}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, v0, Lcom/mycompany/app/main/list/MainListCast;->J1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 101
    .line 102
    new-instance p1, Lcom/mycompany/app/main/list/MainListCast$6;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Lcom/mycompany/app/main/list/MainListCast$6;-><init>(Lcom/mycompany/app/main/list/MainListCast;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListCast$2;->a:Lcom/mycompany/app/main/list/MainListCast;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    move v0, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_0
    if-nez v0, :cond_4

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_4
    :goto_1
    move v0, v3

    .line 40
    :goto_2
    if-eqz v0, :cond_6

    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/mycompany/app/main/list/MainListCast;->K1:Z

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iput-boolean v3, p1, Lcom/mycompany/app/main/list/MainListCast;->K1:Z

    .line 47
    .line 48
    sget v0, Lnet/kaki87/soul2/testing/R$string;->no_found:I

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    :cond_5
    iget-object p1, p1, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_6
    iget-boolean v0, p1, Lcom/mycompany/app/main/list/MainListCast;->K1:Z

    .line 60
    .line 61
    if-eqz v0, :cond_9

    .line 62
    .line 63
    iput-boolean v3, p1, Lcom/mycompany/app/main/list/MainListCast;->K1:Z

    .line 64
    .line 65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 66
    .line 67
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 68
    .line 69
    sget v4, Lnet/kaki87/soul2/testing/R$string;->file_found:I

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v4, p1, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 76
    .line 77
    iget-object v4, v4, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 78
    .line 79
    if-nez v4, :cond_7

    .line 80
    .line 81
    :goto_3
    move v4, v3

    .line 82
    goto :goto_4

    .line 83
    :cond_7
    iget-object v4, v4, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 84
    .line 85
    if-nez v4, :cond_8

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v4, v2, v3

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_9
    iget-object p1, p1, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 108
    .line 109
    const/16 v0, 0x8

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_a
    :goto_5
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListCast$2;->a:Lcom/mycompany/app/main/list/MainListCast;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->w:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, v2, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x6

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->y:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, v2, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->x:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, v2, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 36
    .line 37
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast$2;->a:Lcom/mycompany/app/main/list/MainListCast;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/mycompany/app/main/list/MainListCast;->D0(Lcom/mycompany/app/main/list/MainListCast;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
