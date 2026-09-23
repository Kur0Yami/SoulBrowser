.class Lcom/mycompany/app/web/WebHmgDialog$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$26;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebHmgDialog;->I0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$26;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 4
    .line 5
    iget v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method
