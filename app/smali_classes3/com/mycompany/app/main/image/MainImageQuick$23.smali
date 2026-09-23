.class Lcom/mycompany/app/main/image/MainImageQuick$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$23;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$23;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageQuick$23;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0xe

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 14
    .line 15
    .line 16
    return v7

    .line 17
    :cond_1
    if-ne p2, v7, :cond_3

    .line 18
    .line 19
    const/16 p2, 0x1f

    .line 20
    .line 21
    invoke-static {v1, p2}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, v1, p2}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, v1, Lcom/mycompany/app/main/image/MainImageQuick;->O1:Landroid/net/Uri;

    .line 34
    .line 35
    return v7

    .line 36
    :cond_3
    const/4 p1, 0x2

    .line 37
    if-ne p2, p1, :cond_6

    .line 38
    .line 39
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImageQuick;->P1:Lcom/mycompany/app/dialog/DialogEditText;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 45
    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImageQuick;->A0()V

    .line 50
    .line 51
    .line 52
    iput-boolean v7, v1, Lcom/mycompany/app/main/image/MainImageQuick;->V1:Z

    .line 53
    .line 54
    sput-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 55
    .line 56
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditText;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 59
    .line 60
    new-instance v6, Lcom/mycompany/app/main/image/MainImageQuick$24;

    .line 61
    .line 62
    invoke-direct {v6, v1}, Lcom/mycompany/app/main/image/MainImageQuick$24;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogEditText;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogEditText$EditTextListener;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->P1:Lcom/mycompany/app/dialog/DialogEditText;

    .line 72
    .line 73
    new-instance p1, Lcom/mycompany/app/main/image/MainImageQuick$25;

    .line 74
    .line 75
    invoke-direct {p1, v1}, Lcom/mycompany/app/main/image/MainImageQuick$25;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_0
    return v7
.end method
