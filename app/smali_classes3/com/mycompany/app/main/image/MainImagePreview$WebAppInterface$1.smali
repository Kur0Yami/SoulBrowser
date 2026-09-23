.class Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;->onBlobRead(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    sget-boolean v2, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImagePreview;->I0()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/image/MainImagePreview;->c1(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
