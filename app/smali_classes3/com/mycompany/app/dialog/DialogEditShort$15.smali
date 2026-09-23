.class Lcom/mycompany/app/dialog/DialogEditShort$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditShort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$15;->a:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditShort;->u0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort$15;->a:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort$15;->a:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p2, v1, :cond_0

    .line 7
    .line 8
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 9
    .line 10
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    const/4 v2, 0x2

    .line 15
    if-ne p2, v2, :cond_2

    .line 16
    .line 17
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    const/16 v2, 0x1e

    .line 20
    .line 21
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->r0:Landroid/net/Uri;

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    sget p1, Lcom/mycompany/app/dialog/DialogEditShort;->u0:I

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogEditShort;->F(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return v1
.end method
