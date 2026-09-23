.class Lcom/mycompany/app/dialog/DialogSetVpn$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->c:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->a:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetVpn;->p0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->c:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->E()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->a:I

    .line 2
    .line 3
    rem-int/2addr p2, p1

    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->b:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    add-int/lit8 p2, p2, 0x10

    .line 9
    .line 10
    :cond_0
    sget p1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 11
    .line 12
    if-ne p1, p2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sput p2, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->c:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    const-string v2, "mVpnServer"

    .line 24
    .line 25
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetVpn;->E()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    :goto_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetVpn$8$1;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetVpn$8$1;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn$8;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return p1
.end method
