.class Lcom/mycompany/app/main/image/MainImagePreview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$1;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    and-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$1;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImagePreview;->U0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImagePreview;->U0()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
