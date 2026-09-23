.class Lcom/mycompany/app/dialog/DialogDownUrl$48$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$48;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$48;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$48$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$48;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$48$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$48;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$48;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->D(Lcom/mycompany/app/dialog/DialogDownUrl;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$48;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 13
    .line 14
    return-void
.end method
