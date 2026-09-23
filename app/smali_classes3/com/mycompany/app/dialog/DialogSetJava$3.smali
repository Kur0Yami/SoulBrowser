.class Lcom/mycompany/app/dialog/DialogSetJava$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetJava;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetJava;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava$3;->a:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava$3;->a:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    const/4 p4, 0x2

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, p4, :cond_6

    .line 9
    .line 10
    const/4 p4, 0x3

    .line 11
    if-eq p2, p4, :cond_4

    .line 12
    .line 13
    const/4 p3, 0x4

    .line 14
    if-eq p2, p3, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/dialog/DialogSetJava;->s0:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetJava;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetJava;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogSetJava;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 35
    .line 36
    :cond_3
    new-instance p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    const/16 p3, 0x1c

    .line 42
    .line 43
    iput p3, p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 44
    .line 45
    iput-boolean v0, p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 46
    .line 47
    sget p3, Lnet/kaki87/soul2/testing/R$string;->js_black:I

    .line 48
    .line 49
    iput p3, p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 50
    .line 51
    new-instance p3, Lcom/mycompany/app/dialog/DialogListBook;

    .line 52
    .line 53
    iget-object p4, p1, Lcom/mycompany/app/dialog/DialogSetJava;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetJava;->d0:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p3, p4, p2, v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogSetJava;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 61
    .line 62
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetJava$7;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogSetJava$7;-><init>(Lcom/mycompany/app/dialog/DialogSetJava;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p2}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetJava;->o0:Z

    .line 72
    .line 73
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetJava;->d0:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p4, p1, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 76
    .line 77
    if-eqz p4, :cond_5

    .line 78
    .line 79
    iput-boolean v0, p4, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 80
    .line 81
    :cond_5
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 82
    .line 83
    new-instance p4, Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 84
    .line 85
    invoke-direct {p4, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetJava;Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    iput-object p4, p1, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p4, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_6
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetJava;->n0:Z

    .line 97
    .line 98
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetJava;->e0:Ljava/lang/String;

    .line 99
    .line 100
    iget-object p4, p1, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 101
    .line 102
    if-eqz p4, :cond_7

    .line 103
    .line 104
    iput-boolean v0, p4, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 105
    .line 106
    :cond_7
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 107
    .line 108
    new-instance p4, Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 109
    .line 110
    invoke-direct {p4, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetJava;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    iput-object p4, p1, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {p4, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetJava;->m0:Z

    .line 122
    .line 123
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 124
    .line 125
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 126
    .line 127
    const/16 p2, 0xe

    .line 128
    .line 129
    const-string p4, "mEnableJs"

    .line 130
    .line 131
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
