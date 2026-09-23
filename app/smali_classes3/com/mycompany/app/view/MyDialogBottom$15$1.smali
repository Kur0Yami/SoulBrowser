.class Lcom/mycompany/app/view/MyDialogBottom$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$15$1;->c:Lcom/mycompany/app/view/MyDialogBottom$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$15$1;->c:Lcom/mycompany/app/view/MyDialogBottom$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$15;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;->a()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
