.class Lcom/mycompany/app/dialog/DialogViewSrc$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$10;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$10;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v3, 0x1e

    .line 18
    .line 19
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$12;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$12;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$10$1;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$10$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$10;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
