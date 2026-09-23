.class Lcom/mycompany/app/dialog/DialogDownUrl$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$7$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$7$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$7;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$7;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v3

    .line 13
    :goto_0
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->D(Lcom/mycompany/app/dialog/DialogDownUrl;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$7;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 17
    .line 18
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 19
    .line 20
    return-void
.end method
