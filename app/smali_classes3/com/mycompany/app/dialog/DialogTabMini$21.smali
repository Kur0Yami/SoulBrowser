.class Lcom/mycompany/app/dialog/DialogTabMini$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$21;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$21;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->P()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 7

    .line 1
    sget-object p1, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x3

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    sget p2, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    move p2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move p2, v1

    .line 19
    :goto_0
    if-nez p1, :cond_2

    .line 20
    .line 21
    move v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v2, v1

    .line 24
    :goto_1
    sput p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 25
    .line 26
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogTabMini$21;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 27
    .line 28
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 29
    .line 30
    const/16 v5, 0xf

    .line 31
    .line 32
    const-string v6, "mTabListType"

    .line 33
    .line 34
    invoke-static {v4, v5, p1, v6}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/mycompany/app/dialog/DialogTabMini;->P()V

    .line 38
    .line 39
    .line 40
    if-ne p2, v2, :cond_4

    .line 41
    .line 42
    iget-object p1, v3, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMini$21$1;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabMini$21$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$21;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_4
    iget-object p1, v3, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 57
    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    :goto_2
    return v0

    .line 61
    :cond_5
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMini$21$2;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabMini$21$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$21;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return v1
.end method
