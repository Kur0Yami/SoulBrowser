.class Lcom/mycompany/app/setting/SettingCast$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingCast;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCast$4;->c:Lcom/mycompany/app/setting/SettingCast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCast$4;->c:Lcom/mycompany/app/setting/SettingCast;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/setting/CastActivity;->v0(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/setting/CastActivity$MyCastListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
