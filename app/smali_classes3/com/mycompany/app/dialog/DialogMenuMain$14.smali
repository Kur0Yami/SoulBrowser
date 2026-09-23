.class Lcom/mycompany/app/dialog/DialogMenuMain$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$14;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$14;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->v0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->H([IZ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogMenuMain;->C()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
