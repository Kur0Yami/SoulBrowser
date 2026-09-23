.class Lcom/mycompany/app/dialog/DialogSaveSource$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSaveSource;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSaveSource$8;->a:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSaveSource$8;->a:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method
