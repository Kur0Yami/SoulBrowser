.class Lcom/mycompany/app/main/image/MainImagePreview$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$39;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Copied URL"

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview$39;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 6
    .line 7
    invoke-static {v1, v2, v0, p1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$39;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->O0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->H0()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$39;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->O0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->H0()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p1, v1, p2}, Lcom/mycompany/app/main/image/MainImagePreview;->D0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$39;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->O0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->H0()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {p1, v0, v1}, Lcom/mycompany/app/main/image/MainImagePreview;->w0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$39;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->O0()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->v0(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
