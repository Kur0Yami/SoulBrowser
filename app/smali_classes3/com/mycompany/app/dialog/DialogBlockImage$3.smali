.class Lcom/mycompany/app/dialog/DialogBlockImage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogBlockImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage$3;->a:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogBlockImage$3;->a:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_6

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p2, v1, :cond_4

    .line 9
    .line 10
    const/4 p3, 0x3

    .line 11
    if-eq p2, p3, :cond_0

    .line 12
    .line 13
    sget p1, Lcom/mycompany/app/dialog/DialogBlockImage;->E0:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->t0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    if-eqz p2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->t0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 32
    .line 33
    :cond_3
    new-instance p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 p3, 0x17

    .line 39
    .line 40
    iput p3, p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 41
    .line 42
    iput-boolean v0, p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 43
    .line 44
    sget p3, Lnet/kaki87/soul2/testing/R$string;->blocked_image:I

    .line 45
    .line 46
    iput p3, p2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 47
    .line 48
    new-instance p3, Lcom/mycompany/app/dialog/DialogListBook;

    .line 49
    .line 50
    iget-object v0, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 51
    .line 52
    iget-object v1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p3, v0, p2, v1, p1}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 55
    .line 56
    .line 57
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->t0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 58
    .line 59
    new-instance p1, Lcom/mycompany/app/dialog/DialogBlockImage$12;

    .line 60
    .line 61
    invoke-direct {p1, p4}, Lcom/mycompany/app/dialog/DialogBlockImage$12;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    iput-boolean p3, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 69
    .line 70
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    iput-boolean v0, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 79
    .line 80
    :cond_5
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 81
    .line 82
    new-instance p1, Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 83
    .line 84
    invoke-direct {p1, p4, p2, v1, p3}, Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 88
    .line 89
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    iput-boolean p3, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 96
    .line 97
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->e0:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    iput-boolean v0, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 106
    .line 107
    :cond_7
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 108
    .line 109
    new-instance p1, Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 110
    .line 111
    invoke-direct {p1, p4, p2, v1, p3}, Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 115
    .line 116
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
