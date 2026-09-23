.class Lcom/mycompany/app/dialog/DialogLoadImg$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogLoadImg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg$8;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$8;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->m0:Z

    .line 5
    .line 6
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$8;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 13
    .line 14
    :cond_0
    iget v0, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method
