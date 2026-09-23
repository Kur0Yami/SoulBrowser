.class Lcom/mycompany/app/main/image/MainImagePreview$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$5;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(ZZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$5;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/mycompany/app/main/image/MainImagePreview;->U0()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p2}, Lcom/mycompany/app/main/image/MainImagePreview;->V0()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method
