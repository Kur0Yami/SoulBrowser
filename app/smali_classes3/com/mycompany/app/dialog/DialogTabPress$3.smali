.class Lcom/mycompany/app/dialog/DialogTabPress$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabPress;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabPress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress$3;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress$3;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabPress;->h0:Lcom/mycompany/app/view/MyDialogLink;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabPress$4;

    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabPress$4;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    return-void
.end method
