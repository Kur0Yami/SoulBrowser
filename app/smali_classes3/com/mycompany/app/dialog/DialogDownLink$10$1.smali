.class Lcom/mycompany/app/dialog/DialogDownLink$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownLink$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownLink$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$10$1;->c:Lcom/mycompany/app/dialog/DialogDownLink$10;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink$10$1;->c:Lcom/mycompany/app/dialog/DialogDownLink$10;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownLink$10;->a:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogDownLink;->f0:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-interface {v1, v4, v2, v3, v0}, Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;->b(Ljava/lang/String;JZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
