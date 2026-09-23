.class Lcom/mycompany/app/dialog/DialogDownUrl$47$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$47;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$47$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$47;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$47$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$47;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$47;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogDownUrl;->x2:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->d0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
