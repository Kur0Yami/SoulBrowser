.class Lcom/mycompany/app/dialog/DialogEditSearch$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$13;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditSearch;->z0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$13;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditSearch;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditSearch;->D()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
