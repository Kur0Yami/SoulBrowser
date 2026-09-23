.class Lcom/mycompany/app/main/image/MainImagePreview$70$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$70;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$70;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$70$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$70;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$70$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$70;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$70;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 6
    .line 7
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
