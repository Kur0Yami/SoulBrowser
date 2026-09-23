.class Lcom/mycompany/app/dialog/DialogSetPms$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPms$4$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPms$4$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$4$1$1;->c:Lcom/mycompany/app/dialog/DialogSetPms$4$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms$4$1$1;->c:Lcom/mycompany/app/dialog/DialogSetPms$4$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPms$4$1;->c:Lcom/mycompany/app/dialog/DialogSetPms$4;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogSetPms$4;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogSetPms;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPms$4$1;->c:Lcom/mycompany/app/dialog/DialogSetPms$4;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPms$4;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPms;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
