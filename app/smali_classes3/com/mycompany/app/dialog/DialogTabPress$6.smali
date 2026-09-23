.class Lcom/mycompany/app/dialog/DialogTabPress$6;
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

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress$6;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress$6;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabPress;->h0:Lcom/mycompany/app/view/MyDialogLink;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress$6;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    return-void
.end method
