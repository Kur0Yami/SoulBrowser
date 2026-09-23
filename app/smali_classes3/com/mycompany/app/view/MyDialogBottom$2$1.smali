.class Lcom/mycompany/app/view/MyDialogBottom$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$2$1;->c:Lcom/mycompany/app/view/MyDialogBottom$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$2$1;->c:Lcom/mycompany/app/view/MyDialogBottom$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$2;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->p:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->v:Landroid/view/View;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;->a(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
