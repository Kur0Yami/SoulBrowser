.class Lcom/mycompany/app/dialog/DialogPassInfo$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassInfo$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassInfo$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$15$1;->c:Lcom/mycompany/app/dialog/DialogPassInfo$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo$15$1;->c:Lcom/mycompany/app/dialog/DialogPassInfo$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPassInfo$15;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->D0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->F0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->G0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->D0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->E0:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->F0:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->G0:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->C0:Z

    .line 28
    .line 29
    return-void
.end method
