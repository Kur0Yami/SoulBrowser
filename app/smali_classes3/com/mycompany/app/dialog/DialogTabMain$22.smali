.class Lcom/mycompany/app/dialog/DialogTabMain$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$22;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$22;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->E()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

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
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain$22;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 15
    .line 16
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 17
    .line 18
    const/16 v1, 0xf

    .line 19
    .line 20
    const-string v2, "mTabListType"

    .line 21
    .line 22
    invoke-static {v0, v1, p1, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogTabMain;->E()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p2, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMain$22$1;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabMain$22$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$22;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return p1
.end method
