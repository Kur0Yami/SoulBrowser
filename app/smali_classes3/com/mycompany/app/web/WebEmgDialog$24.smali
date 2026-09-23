.class Lcom/mycompany/app/web/WebEmgDialog$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$24;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$24;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebEmgTask;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebEmgDialog;->s(Lcom/mycompany/app/web/WebEmgDialog;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
