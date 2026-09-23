.class public interface abstract annotation Lcom/google/android/gms/internal/cast/zziv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/cast/zzit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzit;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "android_log_tag"

    .line 5
    .line 6
    const-class v3, Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/cast/zzit;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/cast/zziv;->a:Lcom/google/android/gms/internal/cast/zzit;

    .line 12
    .line 13
    return-void
.end method
