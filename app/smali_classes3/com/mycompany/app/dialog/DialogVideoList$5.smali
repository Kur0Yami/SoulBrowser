.class Lcom/mycompany/app/dialog/DialogVideoList$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogVideoList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$5;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList$5;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->q0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->q0:Z

    .line 9
    .line 10
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogVideoList;->B(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
